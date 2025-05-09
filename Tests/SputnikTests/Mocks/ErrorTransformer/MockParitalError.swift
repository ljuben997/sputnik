@testable import Sputnik

import Foundation
import SputnikSharedResources

public struct MockParitalError: ResponsePartialError {
    public let customMessage: String
    public let customLocations: [MockResponseErrorLocation]
    public let customExtensions: MockResponseErrorExtension?

    public enum CodingKeys: CodingKey {
        case customMessage
        case customLocations
        case customExtensions
    }

    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        customMessage = try container.decode(String.self, forKey: .customMessage)
        customLocations = try container.decode([MockResponseErrorLocation].self, forKey: .customLocations)
        customExtensions = try container.decodeIfPresent(MockResponseErrorExtension.self, forKey: .customExtensions)
    }

    public var errorDescription: String? {
        customMessage
    }
}

public struct MockResponseErrorExtension: Decodable, Sendable {
    public let customCode: String
    public let customAdditionalInfo: String

    public enum CodingKeys: CodingKey {
        case customCode
        case customAdditionalInfo
    }

    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        customCode = try container.decode(String.self, forKey: .customCode)
        customAdditionalInfo = try container.decode(String.self, forKey: .customAdditionalInfo)
    }
}

public struct MockResponseErrorLocation: Decodable, Sendable {
    public let customLine: Int
    public let customColumn: Int

    enum CodingKeys: CodingKey {
        case customLine
        case customColumn
    }

    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        customLine = try container.decode(Int.self, forKey: .customLine)
        customColumn = try container.decode(Int.self, forKey: .customColumn)
    }
}
