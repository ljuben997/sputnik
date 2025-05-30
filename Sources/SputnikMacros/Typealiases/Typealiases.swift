import Foundation
import SputnikSharedResources

public enum Dependencies {
    public typealias ResponsePartialError = SputnikSharedResources.ResponsePartialError
    public typealias SateliteType = SputnikSharedResources.OperationType
    public typealias ScalarSerializable = SputnikSharedResources.ScalarSerializable
    public typealias VariableMapping = SputnikSharedResources.VariableMapping
    public typealias AutomaticVariables = SputnikSharedResources.AutomaticVariables
    public typealias GraphQLMutation = SputnikSharedResources.GraphQLMutation
    public typealias GraphQLQuery = SputnikSharedResources.GraphQLQuery
    public typealias GraphQLOperation = SputnikSharedResources.GraphQLOperation
    public typealias GraphQLSatelite = SputnikSharedResources.GraphQLSatelite
    public typealias ScalarTransformer = SputnikSharedResources.ScalarTransformer
    public typealias ScalarType = SputnikSharedResources.ScalarType
    public typealias SerializedValue = any SputnikSharedResources.SerializedValue
    public typealias UUID = Foundation.UUID
}
