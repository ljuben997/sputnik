@testable import Sputnik

struct AnimeAPI: SputnikGraphQLAPI {
    var urlEndpoint: String = "https://graphql.anilist.co"
    var headers: [String: String] = [:]
}
