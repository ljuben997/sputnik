import SputnikSharedResources

public class DebugHandler {
    private let configuration: DebugConfiguration
    private let logger: CustomLogger

    init(configuration: DebugConfiguration, customLogger: CustomLogger = .init()) {
        self.configuration = configuration
        logger = customLogger
    }

    func handleTreeConfiguration<T: GraphQLOperation>(treeBuilder: TreeBuilder<T>) {
        if configuration.logOperation {
            logger.log(treeBuilder.queryString)
        }
        if configuration.logVariables {
            logger.log(treeBuilder.variablesDictionary)
        }
    }

    func handleResponseConfiguration(response: [String: Any]) {
        if configuration.logResponse {
            logger.log(response)
        }
    }
}
