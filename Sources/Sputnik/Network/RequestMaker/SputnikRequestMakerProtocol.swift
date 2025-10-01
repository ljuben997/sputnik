import SputnikSharedResources

public protocol SputnikRequestMakerProtocol {
    @MainActor
    func makeRequest<T>(operation: T) async throws -> T where T: GraphQLOperation
}
