enum PrimitiveType: String, CaseIterable {
    case string = "String"
    case int = "Int"
    case double = "Double"
    case decimal = "Decimal"
    case bool = "Bool"
    case float = "Float"
    case uInt = "UInt"
    case int8 = "Int8"
    case int16 = "Int16"
    case int32 = "Int32"
    case int64 = "Int64"
    case uInt8 = "UInt8"
    case uInt16 = "UInt16"
    case uInt32 = "UInt32"
    case uInt64 = "UInt64"

    var defaultValue: String {
        switch self {
        case .string:
            DefaultValue.string
        case .int, .double, .decimal, .float, .int8, .int16, .int32, .int64, .uInt, .uInt8, .uInt16, .uInt32, .uInt64:
            DefaultValue.number
        case .bool:
            DefaultValue.boolean
        }
    }
}
