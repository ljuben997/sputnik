import Foundation

struct ArgumentNode: ValueNode {
    let name: String
    let value: JSONValue<Self>?
    let variableKey: String?

    init(name: String, value: JSONValue<Self>) {
        self.init(name: name, value: value, variableKey: nil)
    }

    init(name: String, value: JSONValue<Self>? = nil, variableKey: String? = nil) {
        self.name = name
        self.value = value
        self.variableKey = variableKey
    }
}
