import SputnikSharedResources

protocol VariablesBuilder {
    func buildVariables(for operation: any GraphQLOperation) throws -> [VariableNode]
    func getRootVariablesString(for operation: any GraphQLOperation) throws -> String
}
