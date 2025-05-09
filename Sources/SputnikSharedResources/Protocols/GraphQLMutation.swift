public protocol GraphQLMutation: GraphQLOperation {}

public extension GraphQLMutation {
    var __sateliteType: OperationType {
        .mutation
    }
}
