import Foundation
import SputnikSharedResources

class MockAPIClient: SputnikAPIClient {
    let debugHandler: DebugHandler
    let responseErrorTransformer: any ResponseErrorTransformer.Type
    let customMockResponses: [Int: [String: Any]]

    init(debugConfiguration: DebugConfiguration,
         responseErrorTransformer: any ResponseErrorTransformer.Type,
         customMockResponses: [Int: [String: Any]])
    {
        debugHandler = DebugHandler(configuration: debugConfiguration)
        self.responseErrorTransformer = responseErrorTransformer
        self.customMockResponses = customMockResponses
    }

    func makeRequest<T>(treeBuilder: TreeBuilder<T>) async throws -> T where T: GraphQLOperation {
        var operation = treeBuilder.satellite
        let objectType: any GraphQLOperation.Type = type(of: operation)
        let identifier = ObjectIdentifier(objectType).hashValue
        let response = customMockResponses[identifier]
        guard let response else {
            throw SputnikError.mockResponseNotFound
        }
        guard let bodyData = response["data"] as? [String: Any] else {
            if let errors = response["errors"] as? [Any] {
                let responseError = try responseErrorTransformer.transform(errors: errors)
                throw responseError
            }
            throw SputnikError.dataNotFound
        }
        debugHandler.handleResponseConfiguration(response: response)
        operation.mapQueryData(bodyData)
        operation.setPartialErrors([])
        if let errors = response["errors"] as? [Any] {
            let partialErrors = try responseErrorTransformer.transformErrors(errors: errors)
            operation.setPartialErrors(partialErrors)
        }
        return operation
    }
}
