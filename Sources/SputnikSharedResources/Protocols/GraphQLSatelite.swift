public protocol GraphQLSatelite {
    associatedtype SelectableValue: RawRepresentable<String>
    var __selectedValues: [SelectableValue] { get set }
    var __schemaTypeName: String? { get }
    mutating func setSelections(_ selections: [SelectableValue])
    func containsSelection(_ selection: String) -> Bool
}

public extension GraphQLSatelite {
    func containsSelection(_ selection: String) -> Bool {
        __selectedValues.map(\.rawValue).contains(selection)
    }
}
