import SputnikMacros

@QueryOperation(name: "Characters")
struct RickAndMortyQuery {
    var characters: Characters
    var episode: Episode
    @Property(name: "locationsByIds")
    var locations: [Location]

    @QuerySatelite
    struct Characters {
        var info: Info
        var results: [Character]
        @Variable
        var page: Int?
        @Variable
        var filter: Filter?

        @QuerySatelite
        struct Info {
            var count: Int
            var pages: Int
            var next: Int?
            var prev: Int?
        }

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
        }

        @QuerySatelite(schemaTypeName: "FilterCharacter")
        struct Filter {
            var name: String
            var species: String
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
            var name: String?
            var species: String?
            var type: String?
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
