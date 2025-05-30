import Foundation

public protocol SerializedValue: Equatable {
    var argumentStringValue: String { get }
}

public extension SerializedValue {
    static func == (lhs: Self, rhs: Self) -> Bool {
        "\(lhs)" == "\(rhs)"
    }

    var argumentStringValue: String {
        if let stringValue = self as? String {
            return "\"" + stringValue + "\""
        } else {
            return "\(self)"
        }
    }
}

extension String: SerializedValue {}
extension Int: SerializedValue {}
extension Bool: SerializedValue {}
extension Double: SerializedValue {}
extension Decimal: SerializedValue {}

public protocol ScalarType: Hashable, Equatable {
    associatedtype T
    var value: T? { get set }
    var serializedValue: any SerializedValue { get }
}

public extension ScalarType {
    static func == (lhs: Self, rhs: Self) -> Bool {
        let lhsValue = lhs.serializedValue
        let rhsValue = rhs.serializedValue
        return "\(lhsValue)" == "\(rhsValue)"
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine("\(serializedValue)")
    }
}

public extension Array where Element == any ScalarType {
    var serizalizedValue: [any SerializedValue] {
        return map(\.serializedValue)
    }
}
