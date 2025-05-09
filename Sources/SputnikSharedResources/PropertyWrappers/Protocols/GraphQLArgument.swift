public protocol GraphQLArgument<Value> {
    associatedtype Value
    var value: Value? { get set }
    var name: String? { get }
    var variableKey: String? { get }
}
