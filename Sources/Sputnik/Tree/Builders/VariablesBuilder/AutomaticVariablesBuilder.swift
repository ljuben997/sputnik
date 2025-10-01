import SputnikSharedResources

class AutomaticVariablesBuilder: VariablesBuilder {
    func buildVariables(for operation: any GraphQLOperation) throws -> [VariableNode] {
        guard let automaticVariables = operation as? any AutomaticVariables else { return [] }
        let variables = automaticVariables.variables
        let mirror = Mirror(reflecting: variables)
        return try mirror.children.compactMap { child in
            let name = child.label ?? ""
            guard name != "__selectedValues" else { return nil }
            let value = child.value
            let variableValue = try JSONValue<VariableNode>(childValue: value)
            return VariableNode(name: name, value: variableValue)
        }
    }

    func getRootVariablesString(for operation: any GraphQLOperation) throws -> String {
        guard let automaticVariables = operation as? any AutomaticVariables else { return "" }
        let variables = automaticVariables.variables
        let mirror = Mirror(reflecting: variables)
        let variableNames = mirror.children.compactMap { child -> String? in
            let label = child.label ?? ""
            let value = child.value
            let satellite = value as? any GraphQLSatellite
            let valueType = type(of: value)
            let typeString = satellite?.__schemaTypeName ?? TypeGenerator.transformType(valueType)
            let variableString = "$\(label): \(typeString)"
            return variableString
        }
        guard !variableNames.isEmpty else { return "" }
        return "(" + variableNames.joined(separator: ", ") + ")"
    }
}
