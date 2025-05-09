class TreeNode<T> {
    var value: T
    var children: [TreeNode]

    init(value: T, children: [TreeNode] = []) {
        self.value = value
        self.children = children
    }
}
