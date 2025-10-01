import SputnikSharedResources

extension Array where Element == ArgumentNode {
    func toArgumentsString() throws -> String {
        try compactMap {
            if let variableKey = $0.variableKey {
                "\($0.name): $\(variableKey)"
            } else if let value = $0.value {
                try "\($0.name): \(value.toArgumentsString)"
            } else {
                nil
            }

        }.joined(separator: ", ")
    }
}

public extension Array where Element: GraphQLSatellite {
    mutating func setSelections(_ selections: [Element.SelectableValue]) {
        self[0].setSelections(selections)
    }

    var select: Element {
        get {
            self[0]
        } set {
            self[0] = newValue
        }
    }
}
