import SwiftSyntax

extension TypeSyntax {
    var defaultValue: String {
        let trimmedDescription = self.trimmedDescription
        if isArray {
            return DefaultValue.array
        } else if isOptional {
            return DefaultValue.optional
        } else if let type = PrimitiveType(rawValue: trimmedDescription) {
            return type.defaultValue
        } else {
            return DefaultValue.nonPrimitive
        }
    }

    var isArray: Bool {
        trimmedDescription.first == "[" && (trimmedDescription.last == "]" || trimmedDescription.dropLast().last == "]")
    }

    var isOptional: Bool {
        trimmedDescription.hasSuffix("?")
    }

    var isPrimitiveType: Bool {
        let allowedTypes = PrimitiveType.allCases.map { $0.rawValue }
        let allowedOptionals = allowedTypes.map { $0 + "?" }
        return (allowedTypes + allowedOptionals).contains(trimmedDescription)
    }
}
