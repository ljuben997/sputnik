import Sputnik

struct RickAndMortyAPI: SputnikGraphQLAPI {
    let urlEndpoint: String = "https://rickandmortyapi.com/graphql"
    let headers: [String: String] = [:]
}
