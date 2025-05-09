import SputnikSharedResources

struct MockGraphQLOperation: GraphQLOperation {
    enum SelectableValue: String {
        case none
    }

    var __operationName: String?
    var __sateliteType: OperationType
    var __variableMappingType: VariableMapping
    var __schemaTypeName: String?
    var __selectedValues: [SelectableValue] = []

    init(__operationName: String? = nil,
         __sateliteType: OperationType = .query,
         __variableMappingType: VariableMapping = .automatic,
         __schemaTypeName: String? = nil)
    {
        self.__operationName = __operationName
        self.__sateliteType = __sateliteType
        self.__variableMappingType = __variableMappingType
        self.__schemaTypeName = __schemaTypeName
    }

    var mapQueryDataCallsCount: Int = 0
    mutating func mapQueryData(_: [String: Any]) {
        mapQueryDataCallsCount += 1
    }

    var setPartialErrorsCallsCount: Int = 0
    mutating func setParialErrors(_: [ResponsePartialError]) {
        setPartialErrorsCallsCount += 1
    }

    var setSelectionsCallsCount: Int = 0
    mutating func setSelections(_: [SelectableValue]) {
        setSelectionsCallsCount += 1
    }
}
