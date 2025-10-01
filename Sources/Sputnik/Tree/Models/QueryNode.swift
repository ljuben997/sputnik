import Foundation

struct QueryNode {
    let label: String
    var arguments: [ArgumentNode]

    init(label: String) {
        self.label = label
        arguments = []
    }
}
