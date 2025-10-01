import SputnikSharedResources

/// A property struct. This is used only when the name of your var is different than the name in the schema definition.
/// For example if we have:
/// var id: String
/// but in the schema definition the name is "episodeId", then it must be rewritten to:
/// Property(name: "episodeId") var id: String.
@propertyWrapper
public struct Property<Value>: GraphQLProperty {
    public var value: Value?
    public var name: String

    /// Even thought we are using a force unwrap here because of the macros when we define this we are automatically
    /// giving it a default value. So this will never go to a crash.
    public var wrappedValue: Value {
        get {
            value!
        } set {
            value = newValue
        }
    }

    public init(name: String) {
        value = nil
        self.name = name
    }
}
