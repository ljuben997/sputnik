public protocol GraphQLVariable<Value> {
    associatedtype Value
    var value: Value? { get set }
    var name: String? { get }
}
