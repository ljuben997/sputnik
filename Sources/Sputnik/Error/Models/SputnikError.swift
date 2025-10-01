import Foundation
import SputnikSharedResources

/// All the errors that are being handled and thrown by Sputnik.
enum SputnikError: LocalizedError {
    case invalidUrl
    case invalidDictionary
    case invalidSerialization
    case dataNotFound
    case unableToDecode
    case connectionClosed
    case responseError([ResponsePartialError])
    case mockResponseNotFound
    case invalidResponseString
    case unrecognizedParsing
    case invalidArgument

    var errorDescription: String? {
        switch self {
        case .invalidUrl:
            "Invalid URL. Please enter a valid url in the API configuration."
        case .invalidDictionary:
            "Invalid JSON format - expected dictionary"
        case .invalidSerialization:
            "Failed to convert graphQL operation and variables to a JSON data. Please check the operation definition."
        case .dataNotFound:
            "Unable to find \"data\" object in the response json. Please check the response either with a breakpoint or print the response in the logs by setting \"printResponse\" to \"true\" in the DebugConfiguration"
        case .unableToDecode:
            "Unable to decode the data received to a proper dictionary. Please check the response either with a breakpoint or print the response in the logs by setting \"printResponseData\" to \"true\" in the DebugConfiguration"
        case .connectionClosed:
            "The connection has been closed. Please start another connection with the subscription."
        case let .responseError(errors):
            "The response returned these errors: \n \(errors.map(\.localizedDescription).joined(separator: "\n"))"
        case .mockResponseNotFound:
            "Unable to find mock response for the given query. Please check the configuration."
        case .unrecognizedParsing:
            "Unable to parse a selected value"
        case .invalidArgument:
            "Invalid argument. The argument must either contain a value or a variable key."
        case .invalidResponseString:
            "The response string provided is invalid. Please enter a valid response string."
        }
    }
}
