import SputnikSharedResources

/// This is the standard macro that must be appended to every nested struct within your GraphQLOperation struct, otherwise the mapping won't
/// work. By default this adds a mapData() function which maps all the data from the response to every variable in the struct. It also adds a special
/// setSelections() function. This function is used for you to define exactly which values from the QuerySatellite you want the response to return.
/// - Parameter schemaTypeName: Use this when your struct name is not the same as the name in the schema definitions, but only if the struct.
/// is needed as a variable.
/// For example if your struct name is
/// @QueryOperation
/// struct Media {
///     @Variable var media MediaType
///     @QuerySatellite
///     struct MeditaType {}
/// }
/// But in the schema definition the object's type name is Type then this won't work when mapping variables. It must be rewritten as:
/// @QueryOperation
/// struct Media {
///     @Variable var media MediaType
///     @QuerySatellite(schemaTypeName: "type")
///     struct MeditaType {}
/// }
@attached(member, names: arbitrary)
@attached(extension, conformances: GraphQLSatellite, names: arbitrary)
public macro QuerySatellite(schemaTypeName: String? = nil) = #externalMacro(module: "SputnikMacrosSources", type: "QuerySatelliteMacro")

/// QueryOperation macro. Use this to define the main GraphQLQuery. Just like in the @QuerySatellite macro this also adds the function setSelections().
/// - Parameter name: The name of the query used for debugging purposes.
/// - Parameter variableMapping: The variable mapping type. By default it's automatic.
@attached(member, names: arbitrary)
@attached(extension, conformances: GraphQLQuery, AutomaticVariables, names: arbitrary)
public macro QueryOperation(name: String? = nil, variableMapping: VariableMapping = .automatic) = #externalMacro(module: "SputnikMacrosSources", type: "QueryOperationMacro")

/// QueryMacro macro. Use this to define the main GraphQLMutation. Just like in the @QuerySatellite macro this also adds the function setSelections().
/// - Parameter name: The name of the mutation used for debugging purposes.
/// - Parameter variableMapping: The variable mapping type. By default it's automatic.
@attached(member, names: arbitrary)
@attached(extension, conformances: GraphQLMutation, AutomaticVariables, names: arbitrary)
public macro QueryMutation(name: String? = nil, variableMapping: VariableMapping = .automatic) = #externalMacro(module: "SputnikMacrosSources", type: "QueryMutationMacro")

/// A macro for defining a custom scalar type. Attach this to a struct which will make it conform it to ScalarType. In the tests there is an example called
/// "DateScalar". You can check it out to see how to use it.
/// - Parameter expressibleBy: An array of scalar ScalarSerializable.
/// Use this to tell the scalar by which values it can be expressed as. For example if an ID scalar can only be expressed by an Int or a
/// string then simply add [.string, .int]
/// - Parameter valueType: The type of the value which is stored in the scalar to use it on the main code. For example in the "DateScalar"
/// example the valueType is of a type "Date". This means whenever we try to access the scalar's "value" property it will be of a date type.
/// - Parameter transformer: A transformer type for initializing the scalar from the response and serializing to for a request. By default we use
/// the DefaultScalarTransformer but that is very limited since it only casts the object to json values. If you want to have a more complex logic
/// you will have to create your own transformer which conforms to the ScalarTransformer protocol. See the "DateScalarTransformer" in the tests as an example.
@attached(member, names: arbitrary)
@attached(extension, conformances: ScalarType, ExpressibleByStringLiteral, ExpressibleByIntegerLiteral, ExpressibleByBooleanLiteral, ExpressibleByFloatLiteral, names: arbitrary)
public macro Scalar<T>(expressibleBy: [ScalarSerializable] = [.string], valueType: T.Type = (any SerializedValue).self, transformer: (any ScalarTransformer.Type)? = nil) = #externalMacro(module: "SputnikMacrosSources", type: "ScalarMacro")

/// A simple macro that needs to be attached to every enum that is used within your GraphQL operation. Every enum within your operation
/// must have this macro otherwise the mapping won't work.
@attached(member, names: arbitrary)
public macro QueryEnum() = #externalMacro(module: "SputnikMacrosSources", type: "QueryEnumMacro")
