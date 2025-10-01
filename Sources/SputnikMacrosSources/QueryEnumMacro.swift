import SputnikSharedResources
import SwiftDiagnostics
import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros

public struct QueryEnumMacro: MemberMacro {
    public static func expansion(of node: AttributeSyntax,
                                 providingMembersOf declaration: some DeclGroupSyntax,
                                 conformingTo _: [TypeSyntax],
                                 in context: some MacroExpansionContext) throws -> [DeclSyntax]
    {
        guard let enumDecl = declaration.as(EnumDeclSyntax.self) else {
            context.throwError(error: .enumApplicableOnly, of: node)
            return []
        }

        let stringInheritance = enumDecl.inheritanceClause?.inheritedTypes.first(where: { $0.type.trimmedDescription == "String" })
        guard stringInheritance != nil else {
            context.throwError(error: .enumStringInheritance, of: node)
            return []
        }

        let members = enumDecl.memberBlock.members
        let caseDecls = members.compactMap { $0.decl.as(EnumCaseDeclSyntax.self) }
        guard let defaultValue = caseDecls.first?.elements.first?.name.text else {
            context.throwError(error: .enumAtLeaseOneCaseRequired, of: node)
            return []
        }
        let literal = """
            public init() {
                self = .\(defaultValue)
            }

            public mutating func mapData(_ data: Any) {
                guard let rawValue = data as? String else { return }
                self = .init(rawValue: rawValue) ?? .\(defaultValue)
            }
        """
        return [DeclSyntax(stringLiteral: literal)]
    }
}
