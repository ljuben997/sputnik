import SputnikSharedResources

/// The default scalar transformer used for initializing and serializing values. By default it just casts the value to the specific scalar value.
public class DefaultScalarTransformer<T>: ScalarTransformer {
    public static func initialize(stringValue: String) -> T? {
        stringValue as? T
    }

    public static func initialize(intValue: Int) -> T? {
        intValue as? T
    }

    public static func initialize(doubleValue: Double) -> T? {
        doubleValue as? T
    }

    public static func initialize(booleanValue: Bool) -> T? {
        booleanValue as? T
    }

    public static func serializedValue(value: T?) -> any SerializedValue {
        value as? any SerializedValue ?? ""
    }
}
