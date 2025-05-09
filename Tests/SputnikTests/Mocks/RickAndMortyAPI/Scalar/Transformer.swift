@testable import SputnikSharedResources

class ScalarIDTransformer: ScalarTransformer {
    static func initialize(stringValue: String) -> IDRepresentable? {
        let intVale = Int(stringValue) ?? 0
        return IDRepresentable(value: intVale)
    }

    static func initialize(intValue: Int) -> IDRepresentable? {
        IDRepresentable(value: intValue)
    }

    static func initialize(doubleValue _: Double) -> IDRepresentable? {
        nil
    }

    static func initialize(booleanValue _: Bool) -> IDRepresentable? {
        nil
    }

    static func serializedValue(value: IDRepresentable?) -> any SerializedValue {
        value?.value ?? ""
    }
}
