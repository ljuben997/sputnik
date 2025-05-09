public protocol GraphQLQuery: GraphQLOperation {}

public extension GraphQLQuery {
    var __sateliteType: OperationType {
        .query
    }
}
