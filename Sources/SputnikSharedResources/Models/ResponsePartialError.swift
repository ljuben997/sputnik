import Foundation

/// Parital error protocol for errors handling. By the official GraphQL documentation errors are handled by
/// being returned in the JSON response in an array field called "errors".
/// By default Sputnik has an error implemetation "DefaultPartialError" and the api will handle it by converting it to that object unless specified otherwise
/// in your API definition, however if the errors from your API are handed differently you can create
/// a different struct which inherits this protocol.
public protocol ResponsePartialError: LocalizedError, Decodable {}
