import SputnikSharedResources

class AutomaticArgumentsBuilder: ArgumentsBuilder {
    func buildArguments(forMirrorChildren children: Mirror.Children) throws -> [ArgumentNode] {
        children.compactMap { child in
            guard let property = child.value as? any GraphQLVariable,
                  let childLabel = child.label?.dropFirst() else { return nil }
            let label = "\(childLabel)"
            let variableKey = property.name ?? label
            return ArgumentNode(name: label,
                                variableKey: variableKey)
        }
    }
}
