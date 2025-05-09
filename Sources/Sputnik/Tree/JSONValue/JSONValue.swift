import SputnikSharedResources

indirect enum JSONValue<T> where T: ValueNode {
    case serialized(value: any SerializedValue)
    case scalar(value: any ScalarType)
    case rawRepresentable(value: any RawRepresentable)
    case object(value: [T])
    case optional(value: JSONValue?)
    case array(value: [JSONValue])

    init(childValue: Any) throws {
        let childMirror = Mirror(reflecting: childValue)
        if let optionalChildValue = childValue as? any OptionalProtocol {
            self = if let wrappedValue = optionalChildValue.wrappedValue { try .optional(value: Self(childValue: wrappedValue)) } else { .optional(value: nil) }
        } else if let serialized = childValue as? any SerializedValue {
            self = .serialized(value: serialized)
        } else if let scalarType = childValue as? any ScalarType {
            self = .scalar(value: scalarType)
        } else if let rawRepresentableType = childValue as? any RawRepresentable {
            self = .rawRepresentable(value: rawRepresentableType)
        } else if let array = childValue as? [Any] {
            self = try .array(value: array.map { try Self(childValue: $0) })
        } else if childMirror.displayStyle == .struct || childMirror.displayStyle == .class {
            self = try .object(value: Self.transformObject(for: childMirror.children))
        } else {
            throw SputnikError.unrecognizedParsing
        }
    }

    private static func transformObject(for children: Mirror.Children) throws -> [T] {
        try children.compactMap { child in
            guard let label = child.label,
                  label != "__selectedValues" else { return nil }
            let value = try JSONValue<T>(childValue: child.value)
            return T(name: label, value: value)
        }
    }
}

extension JSONValue where T == VariableNode {
    var toJsonDictionaryValue: Any? {
        get throws {
            switch self {
            case let .serialized(value):
                value
            case let .scalar(value):
                value.serializedValue
            case let .rawRepresentable(value):
                value.rawValue
            case let .object(value):
                try toJSONDictionary(valueNodes: value)
            case let .array(value):
                try value.map { try $0.toJsonDictionaryValue }
            case let .optional(value):
                if let value { try value.toJsonDictionaryValue } else { nil }
            }
        }
    }

    private func toJSONDictionary(valueNodes: [VariableNode]) throws -> [String: Any] {
        var jsonDictionary: [String: Any] = [:]
        for valueNode in valueNodes {
            jsonDictionary[valueNode.name] = try valueNode.value.toJsonDictionaryValue
        }
        return jsonDictionary
    }
}

extension JSONValue where T == ArgumentNode {
    var toArgumentsString: String {
        get throws {
            switch self {
            case let .serialized(value):
                value.argumentStringValue
            case let .scalar(value):
                value.serializedValue.argumentStringValue
            case let .rawRepresentable(value):
                "\"" + "\(value.rawValue)" + "\""
            case let .object(value):
                try "{ " + toArgumentsString(values: value) + " }"
            case let .array(value):
                try "[" + value.map { try $0.toArgumentsString }.joined(separator: ", ") + "]"
            case let .optional(value):
                if let value { try value.toArgumentsString } else { "null" }
            }
        }
    }

    private func toArgumentsString(values: [ArgumentNode]) throws -> String {
        try values.compactMap {
            if let variableKey = $0.variableKey {
                "\($0.name): $\(variableKey)"
            } else if let value = $0.value {
                try "\($0.name): \(value.toArgumentsString)"
            } else {
                nil
            }

        }.joined(separator: ", ")
    }
}
