public protocol GraphQLOperation: GraphQLSatellite {
    var __operationName: String? { get }
    var __satelliteType: OperationType { get }
    var __variableMappingType: VariableMapping { get }
    mutating func mapQueryData(_ data: [String: Any])
    mutating func setPartialErrors(_ errors: [ResponsePartialError])
}
