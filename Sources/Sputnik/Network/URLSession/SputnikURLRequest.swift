import Foundation
import SputnikSharedResources

/// Builds a url request based on the given data.
class SputnikURLRequest<T> where T: GraphQLOperation {
    let headers: [String: String]
    let treeBuilder: TreeBuilder<T>
    let urlEndpoint: String

    init(urlEndpoint: String, headers: [String: String], treeBuilder: TreeBuilder<T>) {
        self.headers = headers
        self.treeBuilder = treeBuilder
        self.urlEndpoint = urlEndpoint
    }

    func buildRequest() throws -> URLRequest {
        guard let url = URL(string: urlEndpoint) else {
            throw SputnikError.invalidUrl
        }
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        for (headerName, headerValue) in headers {
            request.setValue(headerValue, forHTTPHeaderField: headerName)
        }
        for (headerName, headerValue) in BaseHeaders.headers {
            request.setValue(headerValue, forHTTPHeaderField: headerName)
        }
        let query = treeBuilder.queryString
        let variables = treeBuilder.variablesDictionary
        let body: [String: Any] = ["query": query, "variables": variables]
        guard let jsonData = try? JSONSerialization.data(withJSONObject: body) else {
            throw SputnikError.invalidSerialization
        }
        request.httpBody = jsonData
        return request
    }
}
