import Foundation

enum SputnikMacroError: LocalizedError {
    case duplicateVariableNames(duplicates: [String])
    case enumApplyableOnly
    case enumAtLeaseOneCaseRequired
    case enumStringInheritance
    case structApplyableOnly
    case querySateliteApplyableOnly

    var id: String {
        switch self {
        case .duplicateVariableNames:
            "duplicateVariable"
        case .enumApplyableOnly:
            "enumApplyableOnly"
        case .enumAtLeaseOneCaseRequired:
            "oneCase"
        case .enumStringInheritance:
            "stringInheritance"
        case .structApplyableOnly:
            "structOnly"
        case .querySateliteApplyableOnly:
            "querySatelite"
        }
    }

    var errorDescription: String? {
        switch self {
        case let .duplicateVariableNames(duplicates):
            "Multiple variables found with the same name: \(duplicates.map { "\"\($0)\"" }.joined(separator: ", ")). Please either change the name of the variable or change the label \"name\" in the variable property wrapper."
        case .enumApplyableOnly:
            "This macro can only be applied to an enum. Please declare the type as an enum or remove the macro from the declaration."
        case .enumAtLeaseOneCaseRequired:
            "The defined enum must have at least one value as a default value."
        case .enumStringInheritance:
            "The defined enum must inherit from \"String\"."
        case .structApplyableOnly:
            "This macro can only be applied to a struct. Please rename the type to a struct or remove the macro."
        case .querySateliteApplyableOnly:
            "All of the nested structs withing the operation must be declared witht the \"@QuerySatelite\" macro."
        }
    }
}
