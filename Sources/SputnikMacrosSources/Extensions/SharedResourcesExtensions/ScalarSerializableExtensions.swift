import SputnikSharedResources

extension ScalarSerializable {
    var expressibleExtensionLiteral: String {
        switch self {
        case .string:
            "ExpressibleByStringLiteral"
        case .int:
            "ExpressibleByIntegerLiteral"
        case .double:
            "ExpressibleByFloatLiteral"
        case .boolean:
            "ExpressibleByBooleanLiteral"
        }
    }

    var initLiteral: String {
        switch self {
        case .string:
            """
            public init(stringLiteral value: String) {
                self.value = transformer.initialize(stringValue: value)
            }
            """
        case .int:
            """
            public init(integerLiteral value: Int) {
                self.value = transformer.initialize(intValue: value)
            }
            """
        case .double:
            """
            public init(floatLiteral value: FloatLiteralType) {
                self.value = transformer.initialize(doubleValue: value)
            }
            """
        case .boolean:
            """
            public init(booleanLiteral value: BooleanLiteralType) {
                self.value = transformer.initialize(booleanValue: value)
            }
            """
        }
    }

    var castLiteral: String {
        switch self {
        case .string:
            """
            if let stringValue = data as? String {
                value = transformer.initialize(stringValue: stringValue)
            }
            """
        case .int:
            """
            if let intValue = data as? Int {
                value = transformer.initialize(intValue: intValue)
            }
            """
        case .double:
            """
            if let doubleValue = data as? Double {
                value = transformer.initialize(doubleValue: doubleValue)
            }
            """
        case .boolean:
            """
            if let booleanValue = data as? Bool {
                value = transformer.initialize(booleanValue: booleanValue)
            }
            """
        }
    }
}
