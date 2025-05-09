@testable import SputnikMacros

@QueryOperation(variableMapping: .manual)
struct RickAndMortyTestingManualQuery {
    var characters: Characters
    var episode: Episode
    @Property(name: "locationsByIds")
    var locations: [Location]
    @Variable var page: Int?
    @Variable var filter: Characters.Filter?
    @Variable var filters: [Characters.Character.CharacterFilter]
    @Variable var additionalFilters: [Characters.Character.CharacterFilter]?
    @Variable var additionalFilters2: [Characters.Character.CharacterFilter?]?
    @Variable var additionalFilters4: [Characters.Character.CharacterFilter?]
    @Variable var episodeID: ID
    @Variable var locationIds: [ID]

    @QuerySatelite
    struct Characters {
        var results: [Character]?
        @Argument(variableKey: "page")
        var page: Int?
        @Argument(variableKey: "filter")
        var filter: Filter?

        @QuerySatelite
        struct Character {
            var id: ID
            var name: String
            var species: String
            var type: String
            @Argument(variableKey: "filters") var filters: [CharacterFilter]
            @Argument(variableKey: "additionalFilters") var additionalFilters: [CharacterFilter]?
            @Argument(variableKey: "additionalFilters2") var additionalFilters2: [CharacterFilter?]?
            @Argument(variableKey: "additionalFilters4") var additionalFilters3: [CharacterFilter?]

            @QuerySatelite
            struct CharacterFilter {
                var location: String
            }
        }

        @QuerySatelite
        struct Filter {
            var name: String
            var species: String
            var ocupation: Ocupation?
            var ocupations: [Ocupation]

            @QuerySatelite
            struct Ocupation {
                var name: String
                var type: String
            }
        }

        @QuerySatelite
        struct Episode {
            @Argument(variableKey: "episodeId")
            var id: ID
            @Property(name: "id")
            var episodeId: ID
            var name: String
        }

        @QuerySatelite
        struct Location {
            @Argument(variableKey: "locationIds")
            var ids: [ID]
            var id: ID
        }
    }
}
