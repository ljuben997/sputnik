import Foundation
import SputnikSharedResources

public class NetworkAPIClient: SputnikAPIClient {
    let urlEndpoint: String
    let headers: [String: String]
    let debugHandler: DebugHandler
    let responseErrorTransformer: any ResponseErrorTransformer.Type

    public init(urlEndpoint: String,
                headers: [String: String],
                resonseErrorTransformer: any ResponseErrorTransformer.Type,
                debugConfiguration: DebugConfiguration)
    {
        self.urlEndpoint = urlEndpoint
        self.headers = headers
        responseErrorTransformer = resonseErrorTransformer
        debugHandler = DebugHandler(configuration: debugConfiguration)
    }

    func makeRequest<T>(treeBuilder: TreeBuilder<T>) async throws -> T where T: GraphQLOperation {
        let requestBuilder = SputnikURLRequest(urlEndpoint: urlEndpoint,
                                               headers: headers,
                                               treeBuilder: treeBuilder)
        let request = try requestBuilder.buildRequest()

        let (data, _) = try await URLSession.shared.data(for: request)
        guard let response = try JSONSerialization.jsonObject(with: data) as? [String: Any] else {
            throw SputnikError.unableToDecode
        }
        debugHandler.handleResponseConfiguration(response: response)
        guard let bodyData = response["data"] as? [String: Any] else {
            if let errors = response["errors"] as? [Any] {
                let responseError = try responseErrorTransformer.transform(errors: errors)
                throw responseError
            }
            throw SputnikError.dataNotfound
        }
        var operation = treeBuilder.satelite
        operation.mapQueryData(bodyData)
        operation.setParialErrors([])
        if let errors = response["errors"] as? [Any] {
            let partialErrors = try responseErrorTransformer.transformErrors(errors: errors)
            operation.setParialErrors(partialErrors)
        }
        return operation
    }
}
