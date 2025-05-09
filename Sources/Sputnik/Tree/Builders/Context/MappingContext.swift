import SputnikSharedResources

public class MappingContext {
    let variablesBuilder: VariablesBuilder
    let argumentsBuilder: ArgumentsBuilder

    init(operation: any GraphQLOperation) {
        switch operation.__variableMappingType {
        case .automatic:
            variablesBuilder = AutomaticVariablesBuilder()
            argumentsBuilder = AutomaticArgumentsBuilder()
        case .manual:
            variablesBuilder = ManualVariablesBuilder()
            argumentsBuilder = ManualArgumentsBuilder()
        }
    }
}
