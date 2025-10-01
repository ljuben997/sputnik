public struct VariableNode: ValueNode {
    let name: String
    let value: JSONValue<Self>

    init(name: String, value: JSONValue<Self>) {
        self.name = name
        self.value = value
    }
}
