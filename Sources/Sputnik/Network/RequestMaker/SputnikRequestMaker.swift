import SputnikSharedResources

/// The request maker when making requests.
public class SputnikRequestMaker: SputnikRequestMakerProtocol {
    /// The API definition.
    let api: SputnikGraphQLAPI
    /// A custom configuration,. If you want to add your own configuration add this to the init otherwise it will take the global configuration.
    let configuration: SputnikAPIConfiguration?
    /// A custom debug configuration. If you want to add a debug configuration only when making this request add this to the init otherwise it will use
    /// the default configuration.
    let debugConfiguration: DebugConfiguration?

    public init(api: SputnikGraphQLAPI,
                configuration: SputnikAPIConfiguration? = nil,
                debugConfiguration: DebugConfiguration? = nil)
    {
        self.api = api
        self.debugConfiguration = debugConfiguration
        self.configuration = configuration
    }

    /// Accepts an operation and then makes a request. If everything is OK it will return the same object but with the desired fields filled up with response data.
    @MainActor
    public func makeRequest<T>(operation: T) async throws -> T where T: GraphQLOperation {
        let treeFactory = TreeFactory(operation: operation)
        try treeFactory.buildTree()
        let treeBuilder = treeFactory.getBuiltTree()
        let configuration = configuration ?? SputnikAPIConfiguration.defaultConfiguration
        let debugConfiguration = debugConfiguration ?? configuration.debugConfiguration
        let debugHandler = DebugHandler(configuration: debugConfiguration)
        debugHandler.handleTreeConfiguration(treeBuilder: treeBuilder)
        let apiClient = createApiClient(configuration: configuration, debugConfiguration: debugConfiguration)
        return try await apiClient.makeRequest(treeBuilder: treeBuilder)
    }

    @MainActor
    private func createApiClient(configuration: SputnikAPIConfiguration, debugConfiguration: DebugConfiguration) -> SputnikAPIClient {
        switch configuration.mode {
        case .network:
            NetworkAPIClient(urlEndpoint: api.urlEndpoint,
                             headers: api.headers,
                             responseErrorTransformer: api.responseErrorTransformer,
                             debugConfiguration: debugConfiguration)
        case .mock:
            MockAPIClient(debugConfiguration: debugConfiguration,
                          responseErrorTransformer: api.responseErrorTransformer,
                          customMockResponses: configuration.mockResponses)
        }
    }
}
