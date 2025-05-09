extension String {
    var extractArrayType: String {
        guard let startIndex = firstIndex(of: "["),
              let endIndex = firstIndex(of: "]") else { return self }
        return String(self[index(after: startIndex) ..< endIndex])
    }

    var extractOptionalType: String {
        guard last == "?" else { return self }
        return String(dropLast())
    }

    var isPrimitiveType: Bool {
        let allowedTypes = PrimitiveType.allCases.map { $0.rawValue }
        let allowedOptionals = allowedTypes.map { $0 + "?" }
        return (allowedTypes + allowedOptionals).contains(self)
    }

    var extractPrimitiveType: String {
        guard let startIndex = lastIndex(of: ":") else { return "" }
        return String(self[index(after: startIndex) ..< endIndex])
    }

    var isOptionalArrayType: Bool {
        first == "[" && hasSuffix("]?")
    }

    var isArrayType: Bool {
        first == "[" && last == "]"
    }
}
