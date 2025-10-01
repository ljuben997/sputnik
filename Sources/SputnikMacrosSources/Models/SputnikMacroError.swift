import Foundation

enum SputnikMacroError: LocalizedError {
    case duplicateVariableNames(duplicates: [String])
    case enumApplicableOnly
    case enumAtLeaseOneCaseRequired
    case enumStringInheritance
    case structApplicableOnly
    case querySatelliteApplicableOnly

    var id: String {
        switch self {
        case .duplicateVariableNames:
            "duplicateVariable"
        case .enumApplicableOnly:
            "enumApplicableOnly"
        case .enumAtLeaseOneCaseRequired:
            "oneCase"
        case .enumStringInheritance:
            "stringInheritance"
        case .structApplicableOnly:
            "structOnly"
        case .querySatelliteApplicableOnly:
            "querySatellite"
        }
    }

    var errorDescription: String? {
        switch self {
        case let .duplicateVariableNames(duplicates):
            "Multiple variables found with the same name: \(duplicates.map { "\"\($0)\"" }.joined(separator: ", ")). Please either change the name of the variable or change the label \"name\" in the variable property wrapper."
        case .enumApplicableOnly:
            "This macro can only be applied to an enum. Please declare the type as an enum or remove the macro from the declaration."
        case .enumAtLeaseOneCaseRequired:
            "The defined enum must have at least one value as a default value."
        case .enumStringInheritance:
            "The defined enum must inherit from \"String\"."
        case .structApplicableOnly:
            "This macro can only be applied to a struct. Please rename the type to a struct or remove the macro."
        case .querySatelliteApplicableOnly:
            "All of the nested structs withing the operation must be declared witht the \"@QuerySatellite\" macro."
        }
    }
}
