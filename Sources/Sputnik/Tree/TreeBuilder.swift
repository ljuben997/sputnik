import SputnikSharedResources

class TreeBuilder<T> where T: GraphQLOperation {
    let satelite: T
    private var tree: TreeNode<QueryNode>
    private var variables: [VariableNode]
    private let mappingContext: MappingContext

    var queryString: String = ""
    var variablesDictionary: [String: Any] = [:]

    init(satelite: T) {
        self.satelite = satelite
        mappingContext = MappingContext(operation: satelite)
        let node = QueryNode(label: satelite.__operationName ?? "")
        tree = TreeNode<QueryNode>(value: node)
        variables = []
    }

    func buildTree() throws {
        try tree.children.append(contentsOf: getChildren(satelite: satelite))
    }

    func generateVariablesJSONDictionary() throws {
        variablesDictionary = try variables.reduce(into: [:]) { $0[$1.name] = try $1.value.toJsonDictionaryValue }
    }

    func generateQueryString() throws {
        var result = ""
        result += [satelite.__sateliteType.rawValue, satelite.__operationName].compactMap(\.self).joined(separator: " ")
        result += try mappingContext.variablesBuilder.getRootVariablesString(for: satelite)
        result += " {\n"
        result += try queryString(node: tree)
        result += "}"
        queryString = result
    }

    func buildVariables() throws {
        variables = try mappingContext.variablesBuilder.buildVariables(for: satelite)
    }

    private func getChildren(satelite: any GraphQLSatelite) throws -> [TreeNode<QueryNode>] {
        try Mirror(reflecting: satelite).children.compactMap { child in
            let node = try toQueryNode(child: child, satelite: satelite)
            if let grandChild = grandchild(child: child) {
                try node?.children.append(contentsOf: getChildren(satelite: grandChild))
            }
            return node
        }
    }

    private func toQueryNode(child: Mirror.Child, satelite: any GraphQLSatelite) throws -> TreeNode<QueryNode>? {
        if child.value is any GraphQLArgument || child.value is any GraphQLVariable { return nil }
        let property = child.value as? any GraphQLProperty
        guard let label = property?.name ?? child.label,
              label != "__selectedValues",
              satelite.containsSelection(label) else { return nil }
        let value = property?.value ?? child.value
        let valueArray = value as? [Any]
        let childValue = valueArray?.first ?? value
        var node = QueryNode(label: label)
        let mirror = Mirror(reflecting: childValue)
        node.arguments = try mappingContext.argumentsBuilder.buildArguments(forMirrorChildren: mirror.children)
        return TreeNode(value: node)
    }

    private func grandchild(child: Mirror.Child) -> (any GraphQLSatelite)? {
        let property = child.value as? any GraphQLProperty
        let value = property?.value ?? child.value
        let sateliteArray = value as? [Any]
        let satelite = sateliteArray?.first ?? value
        return satelite as? any GraphQLSatelite
    }

    private func queryString(node: TreeNode<QueryNode>, level: Int = 1) throws -> String {
        var text = ""
        let indent = String(repeating: "  ", count: level)
        for child in node.children {
            text += indent + child.value.label
            if !child.value.arguments.isEmpty {
                text += try "(" + child.value.arguments.toArgumentsString() + ")"
            }
            if !child.children.isEmpty {
                text += " {\n"
                text += try queryString(node: child, level: level + 1)
                text += indent + "}"
            }
            text += "\n"
        }
        return text
    }
}
