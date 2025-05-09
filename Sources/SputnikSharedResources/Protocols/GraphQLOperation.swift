public protocol GraphQLOperation: GraphQLSatelite {
    var __operationName: String? { get }
    var __sateliteType: OperationType { get }
    var __variableMappingType: VariableMapping { get }
    mutating func mapQueryData(_ data: [String: Any])
    mutating func setParialErrors(_ errors: [ResponsePartialError])
}
