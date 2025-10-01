protocol OptionalProtocol {
    associatedtype Wrapped
    var wrappedValue: Wrapped? { get }
    static var wrappedType: Wrapped.Type { get }
}

extension Optional: OptionalProtocol {
    var wrappedValue: Wrapped? {
        if case let .some(wrapped) = self {
            return wrapped
        }
        return nil
    }

    static var wrappedType: Wrapped.Type {
        Wrapped.self
    }
}
