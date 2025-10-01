public protocol GraphQLSatellite {
    associatedtype SelectableValue: RawRepresentable<String>
    var __selectedValues: [SelectableValue] { get set }
    var __schemaTypeName: String? { get }
    mutating func setSelections(_ selections: [SelectableValue])
    func containsSelection(_ selection: String) -> Bool
}
