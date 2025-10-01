import SputnikSharedResources

/// The Variable property wrapper to define variables.
/// - Parameter value: The value which is wrapped in a variable
/// - Parameter name: The name as it's defined in the schema definition. Use this if the name of the var is different than the name on the schema
/// definition.
/// For example if we have:
/// @Variable var id: String
/// but in the schema definition the name is "episodeId", then it must be rewritten to:
/// @Variable(name: "episodeId") var id: String.
@propertyWrapper
public struct Variable<Value>: GraphQLVariable {
    public var value: Value?
    public let name: String?

    /// Even thought we are using a force unwrap here because of the macros when we define this we are automatically
    /// giving it a default value. So this will never go to a crash.
    public var wrappedValue: Value {
        get {
            value!
        } set {
            value = newValue
        }
    }

    public init(name: String? = nil) {
        value = nil
        self.name = name
    }
}
