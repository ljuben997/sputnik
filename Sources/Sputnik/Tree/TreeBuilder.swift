import SputnikSharedResources

class TreeBuilder<T> where T: GraphQLOperation {
    let satellite: T
    private var tree: TreeNode<QueryNode>
    private var variables: [VariableNode]
    private let mappingContext: MappingContext

    var queryString: String = ""
    var variablesDictionary: [String: Any] = [:]

    init(satellite: T) {
        self.satellite = satellite
        mappingContext = MappingContext(operation: satellite)
        let node = QueryNode(label: satellite.__operationName ?? "")
        tree = TreeNode<QueryNode>(value: node)
        variables = []
    }

    func buildTree() throws {
        try tree.children.append(contentsOf: getChildren(satellite: satellite))
    }

    func generateVariablesJSONDictionary() throws {
        variablesDictionary = try variables.reduce(into: [:]) { $0[$1.name] = try $1.value.toJsonDictionaryValue }
    }

    func generateQueryString() throws {
        var result = ""
        result += [satellite.__satelliteType.rawValue, satellite.__operationName].compactMap(\.self).joined(separator: " ")
        result += try mappingContext.variablesBuilder.getRootVariablesString(for: satellite)
        result += " {\n"
        result += try queryString(node: tree)
        result += "}"
        queryString = result
    }

    func buildVariables() throws {
        variables = try mappingContext.variablesBuilder.buildVariables(for: satellite)
    }

    private func getChildren(satellite: any GraphQLSatellite) throws -> [TreeNode<QueryNode>] {
        try Mirror(reflecting: satellite).children.compactMap { child in
            let node = try toQueryNode(child: child, satellite: satellite)
            if let grandChild = grandchild(child: child) {
                try node?.children.append(contentsOf: getChildren(satellite: grandChild))
            }
            return node
        }
    }

    private func toQueryNode(child: Mirror.Child, satellite: any GraphQLSatellite) throws -> TreeNode<QueryNode>? {
        if child.value is any GraphQLArgument || child.value is any GraphQLVariable { return nil }
        let property = child.value as? any GraphQLProperty
        guard let label = property?.name ?? child.label,
              label != "__selectedValues",
              satellite.containsSelection(label) else { return nil }
        let value = property?.value ?? child.value
        let valueArray = value as? [Any]
        let childValue = valueArray?.first ?? value
        var node = QueryNode(label: label)
        let mirror = Mirror(reflecting: childValue)
        node.arguments = try mappingContext.argumentsBuilder.buildArguments(forMirrorChildren: mirror.children)
        return TreeNode(value: node)
    }

    private func grandchild(child: Mirror.Child) -> (any GraphQLSatellite)? {
        let property = child.value as? any GraphQLProperty
        let value = property?.value ?? child.value
        let satelliteArray = value as? [Any]
        let satellite = satelliteArray?.first ?? value
        return satellite as? any GraphQLSatellite
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
