import SputnikSharedResources

class TreeFactory<T> where T: GraphQLOperation {
    private let treeBuilder: TreeBuilder<T>

    init(operation: T) {
        treeBuilder = TreeBuilder(satellite: operation)
    }

    func buildTree() throws {
        try treeBuilder.buildTree()
        try treeBuilder.buildVariables()
        try treeBuilder.generateQueryString()
        try treeBuilder.generateVariablesJSONDictionary()
    }

    func getBuiltTree() -> TreeBuilder<T> {
        return treeBuilder
    }
}
