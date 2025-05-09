import Foundation
import SputnikSharedResources

/// The default way partial errors are handled as part of the GraphQL documentation: https://graphql.org/learn/response/#errors.
public struct DefaultPartialError: ResponsePartialError {
    public let message: String
    public let locations: [ResponseErrorLocation]?
    public let path: [PathObject]?
    public let extensions: ResponseErrorExtension?

    public enum CodingKeys: CodingKey {
        case message
        case locations
        case path
        case extensions
    }

    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        message = try container.decode(String.self, forKey: .message)
        locations = try container.decodeIfPresent([ResponseErrorLocation].self, forKey: .locations)
        path = try container.decodeIfPresent([PathObject].self, forKey: .path)
        extensions = try container.decodeIfPresent(ResponseErrorExtension.self, forKey: .extensions)
    }

    public var errorDescription: String? {
        message
    }
}

public struct ResponseErrorExtension: Decodable, Sendable {
    public let code: String

    public enum CodingKeys: CodingKey {
        case code
    }

    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        code = try container.decode(String.self, forKey: .code)
    }
}

public struct ResponseErrorLocation: Decodable, Sendable {
    public let line: Int
    public let column: Int

    enum CodingKeys: CodingKey {
        case line
        case column
    }

    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        line = try container.decode(Int.self, forKey: .line)
        column = try container.decode(Int.self, forKey: .column)
    }
}

public struct PathObject: Decodable, Sendable {
    public let value: String

    public init(from decoder: any Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let intValue = try? container.decode(Int.self) {
            value = "\(intValue)"
        } else if let stringValue = try? container.decode(String.self) {
            value = stringValue
        } else {
            value = ""
        }
    }
}
