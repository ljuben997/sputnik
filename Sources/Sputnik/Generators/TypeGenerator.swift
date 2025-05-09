import Foundation
import SputnikSharedResources

/// A helper to generate the types for when we define variables in the query string.
/// According to the documentation if the field is non optional we should have a "!" at the end of it and if it's an array to be wrapped in a "[]" string.
enum TypeGenerator {
    static func transformType(_ type: Any.Type, suffix: String = "!") -> String {
        if let optionalType = type as? any OptionalProtocol.Type {
            return transformType(optionalType.wrappedType, suffix: "")
        } else if let arrayType = type as? any ArrayType.Type {
            let elementTransformed = transformType(arrayType.elementType)
            return "[\(elementTransformed)]\(suffix)"
        } else {
            return "\(type)\(suffix)"
        }
    }
}
