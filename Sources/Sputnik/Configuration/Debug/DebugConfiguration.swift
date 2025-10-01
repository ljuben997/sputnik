public struct DebugConfiguration {
    let logOperation: Bool
    let logVariables: Bool
    let logResponse: Bool

    public init(logOperation: Bool = false,
                logVariables: Bool = false,
                logResponse: Bool = false)
    {
        self.logOperation = logOperation
        self.logVariables = logVariables
        self.logResponse = logResponse
    }
}
