import SputnikSharedResources

/// The protocol used for making an API definition.
public protocol SputnikGraphQLAPI {
    /// The url for the API.
    var urlEndpoint: String { get }
    /// Headers, if the api needs some, if not set this to an empty dictionary.
    var headers: [String: String] { get }
    /// An error transformer for handling and transforming the errors. By default it uses the DefaultResponseErrorTransformer
    /// with DefaultPartialError as the return generic but if you want to use something else write another transformer that implements the protocol and
    /// declare it in the API definition. You can also use the DefaultResponseErrorTransformer but add a different generic value if you want the
    /// transformer to return a different object. The logic for transforming it however will be the same.
    var responseErrorTransformer: any ResponseErrorTransformer.Type { get }
}

public extension SputnikGraphQLAPI {
    var responseErrorTransformer: any ResponseErrorTransformer.Type {
        DefaultResponseErrorTransformer<DefaultPartialError>.self
    }
}
