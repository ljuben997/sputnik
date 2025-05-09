import SputnikSharedResources

protocol SputnikAPIClient {
    @MainActor
    func makeRequest<T>(treeBuilder: TreeBuilder<T>) async throws -> T where T: GraphQLOperation
}
