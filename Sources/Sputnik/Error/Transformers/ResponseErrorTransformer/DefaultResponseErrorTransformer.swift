import Foundation
import SputnikSharedResources

/// The default error transformer. This will always be set as the errors handler unless you explicitly change it to a different one
/// in your API definition.
class DefaultResponseErrorTransformer<T>: ResponseErrorTransformer where T: ResponsePartialError {
    /// Used when the response returns only errors and not data. By default it transforms the errors and returns a sputnik "responseError"
    /// where the data is an array of "DefaultPartialError"
    static func transform(errors: [Any]) throws -> Error {
        let responseErrorData = try transformErrors(errors: errors)
        return SputnikError.responseError(responseErrorData)
    }

    /// Used when the response return data and errors together. Transforms the "errors" into an array of [ResponsePartialErrors].
    /// Then the api client maps them to the field "partialErrors" in your GraphQLOperation object so they can be used in your main code.
    static func transformErrors(errors: [Any]) throws -> [T] {
        let data = try JSONSerialization.data(withJSONObject: errors)
        return try JSONDecoder().decode([T].self, from: data)
    }
}
