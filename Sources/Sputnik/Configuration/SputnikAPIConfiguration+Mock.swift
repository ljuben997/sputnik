import Foundation
import SputnikSharedResources

public extension SputnikAPIConfiguration {
    /// Send the response here as a string in a JSON format. See the file "MockResponses" in the testing part to see how it should be written.
    /// The most important part is each json should begin with a "data" otherwise it won't decode it properly.
    @MainActor
    static func addMockResponse<T: GraphQLOperation>(for operation: T.Type, responseString: String) throws {
        guard let data = responseString.data(using: .utf8),
              let dictionary = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
        else {
            throw SputnikError.invalidResponseString
        }
        addMockResponse(for: operation, responseDictionary: dictionary)
    }

    /// Send the response here as a dictionary in JSON format.
    /// The most important part is each json should begin with a "data" otherwise it won't decode it properly.
    @MainActor
    static func addMockResponse<T: GraphQLOperation>(for operation: T.Type, responseDictionary: [String: Any]) {
        let identifier = ObjectIdentifier(operation).hashValue
        defaultConfiguration.mockResponses[identifier] = responseDictionary
    }

    /// Does the same thing as the static func. Use this for when you have a custom configuration.
    func addMockResponse<T: GraphQLOperation>(for operation: T.Type, responseString: String) throws {
        guard let data = responseString.data(using: .utf8),
              let dictionary = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
        else {
            throw SputnikError.invalidResponseString
        }
        addMockResponse(for: operation, responseDictionary: dictionary)
    }

    /// Does the same thing as the static func. Use this for when you have a custom configuration.
    func addMockResponse<T: GraphQLOperation>(for operation: T.Type, responseDictionary: [String: Any]) {
        let identifier = ObjectIdentifier(operation).hashValue
        mockResponses[identifier] = responseDictionary
    }
}
