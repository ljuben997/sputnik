import SputnikSharedResources
import SwiftDiagnostics
import SwiftSyntax
import SwiftSyntaxMacros

enum SharedSyntax {
    static func getSelectedValuesSyntax(declarations: [VariableDeclSyntax]) -> String {
        let caseNames = declarations
            .filter { !$0.hasPropertyWrapper(named: WrapperNames.argument) && !$0.hasPropertyWrapper(named: WrapperNames.variable) }
            .compactMap { $0.getPropertyLabel(labelName: "name") ?? $0.bindings.first?.pattern.trimmedDescription }
        guard !caseNames.isEmpty else { return "" }
        let cases = caseNames.map { "case \($0)" }
        let selectedValues = caseNames.map { ".\($0)" }
        let selectedValuesSyntax = """
        enum SelectableValue: String, CaseIterable {
             \(cases.joined(separator: "\n"))

            var __selectionName: String {
                self.rawValue
            }
        }

        var __selectedValues: [SelectableValue] = [\(selectedValues.joined(separator: ", "))]
        
        func containsSelection(_ selection: String) -> Bool {
            __selectedValues.map { $0.rawValue }.contains(selection)
        }

        """
        return selectedValuesSyntax
    }

    static func getMapDataSyntax(declarations: [VariableDeclSyntax]) -> String {
        let functionBody = declarations.map { declaration -> String in
            guard let binding = declaration.bindings.first,
                  let type = binding.typeAnnotation?.type else { return "" }
            let variableName = binding.pattern.trimmedDescription
            let dataName = declaration.getPropertyLabel(labelName: "name") ?? binding.pattern.trimmedDescription
            let optionalAttachment = type.isOptional ? "?" : ""
            if !declaration.hasPropertyWrapper(named: WrapperNames.argument) && !declaration.hasPropertyWrapper(named: WrapperNames.variable) {
                if type.isArray {
                    return """
                    if let dataElements = data[\"\(dataName)\"] as? [Any] {
                        self.\(variableName) = Array(repeating: .init(), count: dataElements.count)
                        for index in 0..<dataElements.count {
                            let data = dataElements[index]
                            self.\(variableName)\(optionalAttachment)[index].mapData(data)
                        }
                    }
                    """
                } else if type.isPrimitiveType {
                    return "self.\(variableName) = data[\"\(dataName)\"] as? \(type.trimmedDescription) ?? \(type.defaultValue)"
                } else {
                    return """
                    if let data = data[\"\(dataName)\"] {
                            self.\(variableName)\(optionalAttachment).mapData(data)
                        }
                    """
                }
            } else {
                return ""
            }
        }
        let function = """
        mutating func mapData(_ data: Any) {
            guard let data = data as? [String: Any] else { return }
            \(functionBody.joined(separator: "\n"))
        }
        """
        return function
    }

    static func getOperationSharedSyntax(of node: AttributeSyntax,
                                         providingMembersOf declaration: some DeclGroupSyntax,
                                         in context: MacroExpansionContext) throws -> [DeclSyntax]
    {
        let arguments = node.arguments?.as(LabeledExprListSyntax.self)
        let variableMappingArgument = arguments?.first(where: { $0.label?.text == "variableMapping" })?.expression ?? ""
        let mappingType = extractVariableMappingType(from: variableMappingArgument)
        let childStructs = mappingType == .automatic ? findChildStructs(in: declaration, of: node, in: context) : []
        let variables: [VariableDefinition] = mappingType == .automatic ? findVariables(in: declaration, childStructs: childStructs) : []
        let variableNames = variables.map { $0.name }
        let variableDuplicates = Dictionary(grouping: variableNames, by: { $0 })
            .filter { $1.count > 1 }
            .keys
            .map { $0 }
        guard variableDuplicates.isEmpty else {
            context.throwError(error: .duplicateVariableNames(duplicates: variableDuplicates), of: node)
            return []
        }
        let variableDefinitions = variables.map { variable -> String in
            """
            let \(variable.name): \(variable.type)
            """
        }
        let partialErrorsDefinition = """
        var partialErrors: [Dependencies.ResponsePartialError] = []

        """

        let variablesDeclarationString = variableDefinitions.joined(separator: "\n") + "\n"
        let variableStructDeclarationString = """
        struct Variables {
            \(variablesDeclarationString)
        }

        let variables: Variables

        """

        let declarations = declaration.memberBlock.members
            .compactMap { $0.decl.as(VariableDeclSyntax.self) }
        let storedProperties = declarations.sorted { !$0.hasPropertyWrapper() && $1.hasPropertyWrapper() }.compactMap { $0.bindings.first }

        let parameters = declarations.compactMap { declaration -> String? in
            guard let binding = declaration.bindings.first,
                  let type = binding.typeAnnotation?.type else { return nil }
            let name = binding.pattern.trimmedDescription
            let defaultValue = type.defaultValue
            let isVariable = declaration.hasPropertyWrapper(named: WrapperNames.variable)
            var declarationSyntax = "\(name): \(type)"
            if !isVariable {
                declarationSyntax += " = \(defaultValue)"
            }
            return declarationSyntax
        }

        var variablesDefinition = "variables: Variables"
        if variables.isEmpty {
            variablesDefinition += " = Variables()"
        }

        let storedPropertyNames = storedProperties.map { $0.pattern.trimmedDescription }
        let variablesParameters = [variablesDefinition]
        let variablesPropertyNames = ["variables"]
        let totalProperties = variablesPropertyNames + storedPropertyNames
        let totalParameters = parameters + variablesParameters

        let initializer = """
        init(\(totalParameters.joined(separator: ",\n      "))) {
            \(totalProperties.map { "self.\($0) = \($0)" }.joined(separator: "\n    "))
        }

        """

        let mapDataSyntax = SharedSyntax.getMapDataSyntax(declarations: declarations)
        let selectedValuesSyntax = SharedSyntax.getSelectedValuesSyntax(declarations: declarations)

        return [DeclSyntax(stringLiteral: variableStructDeclarationString + partialErrorsDefinition + selectedValuesSyntax + initializer + mapDataSyntax)]
    }

    static func getOperationExtensionSharedSyntax(of node: AttributeSyntax,
                                                  providingExtensionsOf type: some TypeSyntaxProtocol,
                                                  satelliteType: OperationType) throws -> String
    {
        let arguments = node.arguments?.as(LabeledExprListSyntax.self)
        let variableMappingArgument = arguments?.first(where: { $0.label?.text == "variableMapping" })?.expression ?? ""
        let nameArgument = arguments?.first(where: { $0.label?.text == "name" })?.expression.description ?? "nil"
        let mappingType = extractVariableMappingType(from: variableMappingArgument)
        var protocolConformances = [satelliteType.protocolConformance]
        if mappingType == .automatic {
            protocolConformances.append(ProtocolNames.automaticVariables)
        }
        let protocolConformancesSyntax = protocolConformances.joined(separator: ", ")

        let extensionLiteral = """

        extension \(type): \(protocolConformancesSyntax) {
             var __variableMappingType: Dependencies.VariableMapping {
                  .\(mappingType)
             }

             var __operationName: String? {
                  \(nameArgument)
             }

             var __schemaTypeName: String? {
                  nil
             }
        
             var __satelliteType: Dependencies.OperationType {
                 .\(satelliteType.rawValue)
             }

             mutating func setSelections(_ selections: [SelectableValue]) {
                 __selectedValues = selections
             }

             mutating func mapQueryData(_ data: [String: Any]) {
                 mapData(data)
             }

             mutating func setPartialErrors(_ errors: [Dependencies.ResponsePartialError]) {
                 self.partialErrors = errors
             }
        }
        """

        return extensionLiteral
    }

    private static func extractVariableMappingType(from expression: ExprSyntax) -> VariableMapping {
        guard let memberAccess = expression.as(MemberAccessExprSyntax.self),
              let mapping = VariableMapping(rawValue: memberAccess.declName.baseName.text) else { return .automatic }
        return mapping
    }

    private static func findChildStructs(in declaration: DeclGroupSyntax,
                                         of node: AttributeSyntax,
                                         in context: MacroExpansionContext) -> [String]
    {
        var childStructs: [String] = []
        for member in declaration.memberBlock.members {
            if let nestedStruct = member.decl.as(StructDeclSyntax.self) {
                let hasAttribute = nestedStruct.attributes.contains { attribute in
                    attribute.as(AttributeSyntax.self)?.attributeName.trimmedDescription == "QuerySatellite"
                }
                if !hasAttribute {
                    context.throwError(error: .querySatelliteApplicableOnly, of: node)
                }
                childStructs += [nestedStruct.name.text] + findChildStructs(in: nestedStruct, of: node, in: context)
            }
        }
        return childStructs
    }

    private static func findVariables(in declaration: DeclGroupSyntax, path: String = "", childStructs: [String]) -> [VariableDefinition] {
        var variables = [VariableDefinition]()
        let className = declaration.asProtocol(NamedDeclSyntax.self)?.name.text ?? ""
        let pathName = path + "\(className)."
        for member in declaration.memberBlock.members {
            if let variable = member.decl.as(VariableDeclSyntax.self),
               variable.hasPropertyWrapper(named: WrapperNames.variable),
               let binding = variable.bindings.first,
               let type = binding.typeAnnotation?.type
            {
                let name = variable.getPropertyLabel(labelName: "name") ?? binding.pattern.trimmedDescription
                let typeDescription = type.trimmedDescription
                if !childStructs.contains(typeDescription.extractArrayType.extractOptionalType) {
                    let variable = VariableDefinition(name: name, type: typeDescription)
                    variables.append(variable)
                } else {
                    var fullPath = "\(pathName)\(typeDescription.extractArrayType)"
                    if typeDescription.isOptionalArrayType {
                        fullPath.insert("[", at: fullPath.startIndex)
                        fullPath.append("]?")
                    } else if typeDescription.isArrayType {
                        fullPath.insert("[", at: fullPath.startIndex)
                        fullPath.append("]")
                    }
                    let variable = VariableDefinition(name: name, type: fullPath)
                    variables.append(variable)
                }
            } else if let nestedStruct = member.decl.as(StructDeclSyntax.self) {
                variables += findVariables(in: nestedStruct, path: pathName, childStructs: childStructs)
            }
        }

        return variables
    }
}
