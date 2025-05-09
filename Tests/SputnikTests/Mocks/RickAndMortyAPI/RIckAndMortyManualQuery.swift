import SputnikMacros

@QueryOperation(name: "Characters", variableMapping: .manual)
struct RickAndMortyManualQuery {
    @Variable var page: Int
    @Variable var filter: FilterCharacter?
    @Variable var episodeId: ID
    @Variable var locationIds: [ID]

    var characters: Characters
    var episode: Episode
    @Property(name: "locationsByIds")
    var locations: [Location]
}

struct FilterCharacter {
    var name: String
    var species: String

    init(name: String = "", species: String = "") {
        self.name = name
        self.species = species
    }
}

@QuerySatelite
struct Info {
    var count: Int
    var pages: Int
    var next: Int?
    var prev: Int?
}

@QuerySatelite
struct Episode {
    @Argument(variableKey: "episodeId")
    var id: ID
    @Property(name: "id")
    var episodeId: String
    var name: String
    @Property(name: "air_date")
    var airDate: String
    var episode: String
    var created: String
    var characters: [Character]
}

@QuerySatelite
struct Location {
    @Argument(variableKey: "locationIds")
    var ids: [ID]
    var id: ID
    var name: String
    var type: String
    var dimension: String
    var residents: [Character]
}

@QuerySatelite
struct Characters {
    var info: Info
    var results: [Character]
    @Argument(variableKey: "page")
    var page: Int?
    @Argument(variableKey: "filter")
    var filter: FilterCharacter?
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
    @Property(name: "origin")
    var location: CharacterLocation
}

@QuerySatelite(schemaTypeName: "Location")
struct CharacterLocation {
    var id: ID
    var name: String
    var type: String
    var dimension: String
    var residents: [LocationResident]
}

@QuerySatelite(schemaTypeName: "Character")
struct LocationResident {
    var id: ID
    var name: String
    var species: String
    var type: String
    var gender: String
    var created: String
    var status: Status
}
