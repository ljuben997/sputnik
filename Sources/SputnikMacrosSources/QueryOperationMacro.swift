import SputnikSharedResources
import SwiftDiagnostics
import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros

public struct QueryOperationMacro: MemberMacro, ExtensionMacro {
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
        return try SharedSyntax.getOperationSharedSyntax(of: node, providingMembersOf: declaration, in: context)
    }

    public static func expansion(of node: AttributeSyntax,
                                 attachedTo _: some DeclGroupSyntax,
                                 providingExtensionsOf type: some TypeSyntaxProtocol,
                                 conformingTo _: [TypeSyntax],
                                 in _: some MacroExpansionContext) throws -> [ExtensionDeclSyntax]
    {
        let sharedLiteral = try SharedSyntax.getOperationExtensionSharedSyntax(of: node,
                                                                               providingExtensionsOf: type,
                                                                               satelliteType: .query)
        return try [ExtensionDeclSyntax(SyntaxNodeString(stringLiteral: sharedLiteral))]
    }
}
