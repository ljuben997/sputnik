import SputnikSharedResources

class ManualVariablesBuilder: VariablesBuilder {
    func buildVariables(for operation: any GraphQLOperation) throws -> [VariableNode] {
        let mirror = Mirror(reflecting: operation)
        return try mirror.children.filter { $0.value is any GraphQLVariable }.compactMap { child in
            guard let variable = child.value as? any GraphQLVariable else { return nil }
            let label = "\(child.label?.dropFirst() ?? "")"
            let name = variable.name ?? label
            let value = variable.value ?? child.value
            let variableValue = try JSONValue<VariableNode>(childValue: value)
            return VariableNode(name: name, value: variableValue)
        }
    }

    func getRootVariablesString(for operation: any GraphQLOperation) throws -> String {
        let mirror = Mirror(reflecting: operation)
        let children = mirror.children
        let variables = children.compactMap { child -> String? in
            guard let variable = child.value as? any GraphQLVariable,
                  let value = variable.value,
                  let label = variable.name ?? child.label else { return nil }
            let satellite = value as? any GraphQLSatellite
            let valueType = type(of: value)
            let typeString = satellite?.__schemaTypeName ?? TypeGenerator.transformType(valueType)
            let variableString = "$\(label.dropFirst()): \(typeString)"
            return variableString
        }
        guard !variables.isEmpty else { return "" }
        return "(" + variables.joined(separator: ", ") + ")"
    }
}
