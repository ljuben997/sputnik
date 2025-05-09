import SputnikMacros

@QueryOperation(name: "Characters", variableMapping: .manual)
struct RIckAndMortyManualQueryNoVariables {
    var characters: CharactersArguments
    var episode: EpisodeArguments
    @Property(name: "locationsByIds")
    var locations: [LocationArguments]
}

struct FilterCharacterArguments {
    var name: String
    var species: String

    init(name: String = "", species: String = "") {
        self.name = name
        self.species = species
    }
}

@QuerySatelite
struct InfoArguments {
    var count: Int
    var pages: Int
    var next: Int?
    var prev: Int?
}

@QuerySatelite
struct EpisodeArguments {
    @Argument
    var id: ID
    @Property(name: "id")
    var episodeId: String
    var name: String
    @Property(name: "air_date")
    var airDate: String
    var episode: String
    var created: String
    var characters: [CharacterArguments]
}

@QuerySatelite
struct LocationArguments {
    @Argument
    var ids: [ID]
    var id: ID
    var name: String
    var type: String
    var dimension: String
    var residents: [CharacterArguments]
}

@QuerySatelite
struct CharactersArguments {
    var info: Info
    var results: [CharacterArguments]
    @Argument
    var page: Int?
    @Argument
    var filter: FilterCharacterArguments
}

@QuerySatelite
struct CharacterArguments {
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
struct CharacterLocationArguments {
    var id: ID
    var name: String
    var type: String
    var dimension: String
    var residents: [LocationResidentArguments]
}

@QuerySatelite(schemaTypeName: "Character")
struct LocationResidentArguments {
    var id: ID
    var name: String
    var species: String
    var type: String
    var gender: String
    var created: String
    var status: Status
}
