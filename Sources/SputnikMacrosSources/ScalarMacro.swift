import SputnikSharedResources
import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros

public struct ScalarMacro: MemberMacro, ExtensionMacro {
    public static func expansion(
        of node: AttributeSyntax,
        providingMembersOf _: some DeclGroupSyntax,
        conformingTo _: [TypeSyntax],
        in _: some MacroExpansionContext
    ) throws -> [DeclSyntax] {
        let nodeArguments = node.arguments?.as(LabeledExprListSyntax.self)
        let scalarValueType = nodeArguments?.first(where: { $0.label?.text == "valueType" })?.expression.as(MemberAccessExprSyntax.self)?.base?.as(DeclReferenceExprSyntax.self)?.baseName.text ?? "(any SerializedValue)"
        let scalarTransformer = nodeArguments?.first(where: { $0.label?.text == "transformer" })?.expression.as(MemberAccessExprSyntax.self)?.base?.as(DeclReferenceExprSyntax.self)?.baseName.text ?? "DefaultScalarTransformer<\(scalarValueType)>"

        let valueDefinitionLiteral = """
            public var value: \(scalarValueType)?
            let transformer = \(scalarTransformer).self
        """
        return [DeclSyntax(stringLiteral: valueDefinitionLiteral)]
    }

    public static func expansion(of node: AttributeSyntax,
                                 attachedTo _: some DeclGroupSyntax,
                                 providingExtensionsOf type: some TypeSyntaxProtocol,
                                 conformingTo _: [TypeSyntax],
                                 in _: some MacroExpansionContext) throws -> [ExtensionDeclSyntax]
    {
        let arguments = node.arguments?.as(LabeledExprListSyntax.self)
        let serializableTypesArgument = arguments?.first(where: { $0.label?.text == "expressibleBy" })?.expression.as(ArrayExprSyntax.self)
        let serializableTypes = serializableTypesArgument?.elements.compactMap { element -> ScalarSerializable? in
            guard let memberAccess = element.expression.as(MemberAccessExprSyntax.self) else {
                return nil
            }
            return ScalarSerializable(rawValue: memberAccess.declName.baseName.text)
        } ?? [.string]
        let extensions = ["Dependencies.ScalarType"] + serializableTypes.map { $0.expressibleExtensionLiteral }
        let extensionsLiteral = extensions.joined(separator: ",\n")
        let extensionBodyLiteral = serializableTypes.map { $0.initLiteral }.joined(separator: "\n")
        let mapDataBody = serializableTypes.map { $0.castLiteral }.joined(separator: "\n")
        let extensionLiteral = """
        extension \(type): \(extensionsLiteral) {
            public mutating func mapData(_ data: Any) {
                \(mapDataBody)
            }

            \(extensionBodyLiteral)

            public var serializedValue: Dependencies.SerializedValue {
                transformer.serializedValue(value: value)
            }
        
            public static func == (lhs: Self, rhs: Self) -> Bool {
                let lhsValue = lhs.serializedValue
                let rhsValue = rhs.serializedValue
                return "\\(lhsValue)" == "\\(rhsValue)"
            }

            public func hash(into hasher: inout Hasher) {
                hasher.combine("\\(serializedValue)")
            }

        }
        """
        return try [ExtensionDeclSyntax(SyntaxNodeString(stringLiteral: extensionLiteral))]
    }
}
