@testable import SputnikMacros

@QueryOperation(name: "RickAndMortyTestingQuery")
struct RickAndMortyTestingQuery {
    var characters: Characters
    var episode: Episode
    @Property(name: "locationsByIds")
    var locations: [Location]

    @QuerySatelite
    struct Characters {
        var results: [Character]?
        @Variable
        var page: Int?
        @Variable
        var filter: Filter?

        @QuerySatelite
        struct Character {
            var id: ID
            var name: String
            var species: String
            var type: String
            var gender: String
            var created: String
            var status: Status
            var origin: Location
            @Variable var filters: [CharacterFilter]
            @Variable var additionalFilters: [CharacterFilter]?
            @Variable var additionalFilters2: [CharacterFilter?]?
            @Variable var additionalFilters3: [CharacterFilter?]

            @QuerySatelite
            struct Location {
                var id: ID
                var name: String
                var type: String
                var dimension: String
                var residents: [Character]

                @QuerySatelite
                struct Character {
                    var id: ID
                    var name: String
                    var species: String
                    var type: String
                    var gender: String
                    var created: String
                    var status: Status
                }
            }

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
    }

    @QuerySatelite
    struct Episode {
        @Variable(name: "episodeId")
        var id: ID
        @Property(name: "id")
        var episodeId: ID
        var name: String
        @Property(name: "air_date")
        var airDate: String
        var episode: String
        var created: String
        var characters: [Character]

        @QuerySatelite
        struct Character {
            var name: String
            var species: String
            var type: String
            var gender: String
            var created: String
            var status: String
            var origin: Location

            @QuerySatelite
            struct Location {
                var id: ID
                var name: String
                var type: String
                var dimension: String
                var residents: [Character]

                @QuerySatelite
                struct Character {
                    var name: String
                    var species: String
                    var type: String
                    var gender: String
                    var created: String
                    var status: String
                }
            }
        }
    }

    @QuerySatelite
    struct Location {
        @Variable(name: "locationIds")
        var ids: [ID]
        var id: ID
        var name: String
        var type: String
        var dimension: String
        var residents: [Character]

        @QuerySatelite
        struct Character {
            var name: String
            var species: String
            var type: String
            var gender: String
            var created: String
            var status: String
        }
    }
}
