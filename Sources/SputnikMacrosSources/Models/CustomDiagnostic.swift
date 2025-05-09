import SwiftDiagnostics

struct CustomDiagnostic: DiagnosticMessage {
    let message: String
    let diagnosticID: MessageID
    let severity: DiagnosticSeverity

    init(message: String, domain: String = "MyMacros", id: String, severity: DiagnosticSeverity = .error) {
        self.message = message
        diagnosticID = MessageID(domain: domain, id: id)
        self.severity = severity
    }
}
