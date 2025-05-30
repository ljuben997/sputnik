import SputnikSharedResources
import SwiftDiagnostics
import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros

public struct QueryMutationMacro: MemberMacro, ExtensionMacro {
    public static func expansion(
        of node: AttributeSyntax,
        providingMembersOf declaration: some DeclGroupSyntax,
        in context: some MacroExpansionContext
    ) throws -> [DeclSyntax] {
        guard declaration.as(StructDeclSyntax.self) != nil else {
            context.throwError(error: .structApplyableOnly, of: node)
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
                                                                               sateliteType: .mutation)
        return try [ExtensionDeclSyntax(SyntaxNodeString(stringLiteral: sharedLiteral))]
    }
}
