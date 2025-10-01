public enum OperationType: String {
    case query
    case mutation
    case subscription

    public var protocolConformance: String {
        switch self {
        case .query:
            ProtocolNames.graphQLQuery
        case .mutation:
            ProtocolNames.graphQLMutation
        case .subscription:
            ProtocolNames.graphQLSubscription
        }
    }
}
