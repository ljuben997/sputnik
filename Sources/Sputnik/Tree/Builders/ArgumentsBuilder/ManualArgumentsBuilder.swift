import SputnikSharedResources

class ManualArgumentsBuilder: ArgumentsBuilder {
    func buildArguments(forMirrorChildren children: Mirror.Children) throws -> [ArgumentNode] {
        try children.compactMap { child in
            guard let property = child.value as? any GraphQLArgument,
                  let value = property.value,
                  let label = property.name ?? child.label else { return nil }
            if let variableKey = property.variableKey {
                return ArgumentNode(name: String(label.dropFirst()), variableKey: variableKey)
            } else {
                let value = try JSONValue<ArgumentNode>(childValue: value)
                return ArgumentNode(name: String(label.dropFirst()), value: value)
            }
        }
    }
}
