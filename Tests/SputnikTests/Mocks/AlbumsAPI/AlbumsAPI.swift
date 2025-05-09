@testable import Sputnik

struct AlbumsAPI: SputnikGraphQLAPI {
    var urlEndpoint: String = "https://graphqlzero.almansi.me/api"
    var headers: [String: String] = [:]
}
