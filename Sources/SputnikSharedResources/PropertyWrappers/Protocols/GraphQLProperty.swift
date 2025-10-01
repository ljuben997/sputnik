public protocol GraphQLProperty<Value> {
    associatedtype Value
    var value: Value? { get set }
    var name: String { get }
}
