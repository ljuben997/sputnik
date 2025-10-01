/// A transformer for transforming the scalar from the response as a JSON value to a sclar object and transforms the scalar object to a json value for
/// serialization. In the tests there is an example DateScalar. Take a look at it as an example for how to use it properly. In the tests there is a
/// class called "DateScalarTransformer". Please have a look at it to see how to use this properly when you are trying to build your own custom scalar transformer..
public protocol ScalarTransformer {
    associatedtype T
    /// Initialize the value from a string to a scalar object. If it can't be initialized from a string then simply return a nil.
    static func initialize(stringValue: String) -> T?
    /// Initialize the value from a int to a scalar object. If it can't be initialized from an int then simply return a nil.
    static func initialize(intValue: Int) -> T?
    /// Initialize the value from a double value to a scalar object. If it can't be initialized from a double value then simply return a nil.
    static func initialize(doubleValue: Double) -> T?
    /// Initialize the value from a boolean value to a scalar object. If it can't be initialized from a boolean then simply return a nil.
    static func initialize(booleanValue: Bool) -> T?
    /// Used for serialization when it needs to convert the object to a JSON value. It can either be a string, int, double or bool.
    static func serializedValue(value: T?) -> any SerializedValue
}
