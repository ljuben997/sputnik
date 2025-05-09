import SputnikSharedResources

/// A transformer for handling the errors. By default the errors are handled and transformed from the response through the "DefaultResponseErrorTransformer"
/// but if you want to have a different logic you can always create a new class that inherits this protocol and declare it in your API definition
public protocol ResponseErrorTransformer {
    associatedtype T: ResponsePartialError
    /// Handles the errors if the response contains only errors and no data. By default the api client converts the "errors" array into an error and
    /// throws it.
    static func transform(errors: [Any]) throws -> Error
    /// This is used to jus transform the errors but not throw them. By default we need this if the response returns data and errors together.
    /// Transform these to partial errors and the api client will automatically map the to the "partialErrors" field in your GraphQLOperation object.
    static func transformErrors(errors: [Any]) throws -> [T]
}
