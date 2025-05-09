import SwiftDiagnostics
import SwiftSyntax
import SwiftSyntaxMacros

extension MacroExpansionContext {
    func throwError(error: SputnikMacroError, of node: AttributeSyntax) {
        let diagnosticsMessage = CustomDiagnostic(message: error.localizedDescription,
                                                  id: error.id,
                                                  severity: .error)
        let diagnostic = Diagnostic(node: Syntax(node),
                                    message: diagnosticsMessage)
        diagnose(diagnostic)
    }
}
