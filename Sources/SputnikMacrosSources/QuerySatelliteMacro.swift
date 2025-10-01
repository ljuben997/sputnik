import SputnikSharedResources
import SwiftDiagnostics
import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros

public struct QuerySatelliteMacro: MemberMacro, ExtensionMacro {
    public static func expansion(
        of node: AttributeSyntax,
        providingMembersOf declaration: some DeclGroupSyntax,
        conformingTo _: [TypeSyntax],
        in context: some MacroExpansionContext
    ) throws -> [DeclSyntax] {
        guard declaration.as(StructDeclSyntax.self) != nil else {
            context.throwError(error: .structApplicableOnly, of: node)
            return []
        }
        let declarations = declaration.memberBlock.members
            .compactMap { $0.decl.as(VariableDeclSyntax.self) }
        let storedProperties = declarations.sorted { !$0.hasPropertyWrapper() && $1.hasPropertyWrapper() }.compactMap { $0.bindings.first }

        let parameters = declarations.compactMap { declaration -> String? in
            guard let binding = declaration.bindings.first,
                  let type = binding.typeAnnotation?.type else { return nil }
            let name = binding.pattern.trimmedDescription
            let defaultValue = type.defaultValue
            let declarationSyntax = "\(name): \(type) = \(defaultValue)"
            return declarationSyntax
        }

        let initializer = """
        init(\(parameters.joined(separator: ",\n      "))) {
            \(storedProperties.map { "self.\($0.pattern.trimmedDescription) = \($0.pattern.trimmedDescription)" }.joined(separator: "\n    "))
        }

        """

        let mapDataSyntax = SharedSyntax.getMapDataSyntax(declarations: declarations)
        let selectedValuesSyntax = SharedSyntax.getSelectedValuesSyntax(declarations: declarations)
        return [DeclSyntax(stringLiteral: selectedValuesSyntax + initializer + mapDataSyntax)]
    }

    public static func expansion(of node: AttributeSyntax,
                                 attachedTo declaration: some DeclGroupSyntax,
                                 providingExtensionsOf type: some TypeSyntaxProtocol,
                                 conformingTo _: [TypeSyntax],
                                 in _: some MacroExpansionContext) throws -> [ExtensionDeclSyntax]
    {
        let declarations = declaration.memberBlock.members
            .compactMap { $0.decl.as(VariableDeclSyntax.self) }
        let variableNames = declarations
            .filter { !$0.hasPropertyWrapper(named: WrapperNames.argument) && !$0.hasPropertyWrapper(named: WrapperNames.variable) }
            .compactMap { $0.getPropertyLabel(labelName: "name") ?? $0.bindings.first?.pattern.trimmedDescription }
        let arguments = node.arguments?.as(LabeledExprListSyntax.self)
        let schemaTypeName = arguments?.first(where: { $0.label?.text == "schemaTypeName" })?.expression.description ?? "nil"
        guard !variableNames.isEmpty else { return [] }
        let extensionLiteral =
            """
            extension \(type): \(ProtocolNames.graphQLSatellite) {
                mutating func setSelections(_ selections: [SelectableValue]) {
                     __selectedValues = selections
                 }

                var __schemaTypeName: String? {
                    \(schemaTypeName)
                }
            }
            """
        return try [ExtensionDeclSyntax(SyntaxNodeString(stringLiteral: extensionLiteral))]
    }
}
