enum RickAndMortyQueryMocks {
    enum MainTestingQuery {
        private static let ocupation1 = RickAndMortyTestingQuery.Characters.Filter.Ocupation(name: "Scientist", type: "Science")
        private static let ocupation2 = RickAndMortyTestingQuery.Characters.Filter.Ocupation(name: "Programmer", type: "Programming")
        private static let ocupation3 = RickAndMortyTestingQuery.Characters.Filter.Ocupation(name: "Architect", type: "Architecture")
        private static let ocupation4 = RickAndMortyTestingQuery.Characters.Filter.Ocupation(name: "Artist", type: "Art")
        private static let ocupations: [RickAndMortyTestingQuery.Characters.Filter.Ocupation] = [ocupation2, ocupation3, ocupation4]
        private static let filter1 = RickAndMortyTestingQuery.Characters.Filter(name: "Rick",
                                                                                species: "Human",
                                                                                ocupation: ocupation1,
                                                                                ocupations: ocupations)
        private static let filter2 = RickAndMortyTestingQuery.Characters.Character.CharacterFilter(location: "Space")
        private static let filter3 = RickAndMortyTestingQuery.Characters.Character.CharacterFilter(location: "Earth")
        private static let filter4 = RickAndMortyTestingQuery.Characters.Character.CharacterFilter(location: "Mars")
        private static let filters1 = [filter2]
        private static let filters2 = [filter3, nil]
        private static let filters3 = [nil, filter4]
        private nonisolated(unsafe) static let episodeId: ID = 23
        private nonisolated(unsafe) static let locationIDs: [ID] = ["23", 24]
        private nonisolated(unsafe) static let variables = RickAndMortyTestingQuery.Variables(page: 24,
                                                                                              filter: filter1,
                                                                                              filters: filters1,
                                                                                              additionalFilters: nil,
                                                                                              additionalFilters2: filters2,
                                                                                              additionalFilters3: filters3,
                                                                                              episodeId: episodeId,
                                                                                              locationIds: locationIDs)
        nonisolated(unsafe) static let query = RickAndMortyTestingQuery(variables: variables)
    }

    enum MainTestingManualQuery {
        private static let ocupation1 = RickAndMortyTestingManualQuery.Characters.Filter.Ocupation(name: "Scientist", type: "Science")
        private static let ocupation2 = RickAndMortyTestingManualQuery.Characters.Filter.Ocupation(name: "Programmer", type: "Programming")
        private static let ocupation3 = RickAndMortyTestingManualQuery.Characters.Filter.Ocupation(name: "Architect", type: "Architecture")
        private static let ocupation4 = RickAndMortyTestingManualQuery.Characters.Filter.Ocupation(name: "Artist", type: "Art")
        private static let ocupations: [RickAndMortyTestingManualQuery.Characters.Filter.Ocupation] = [ocupation2, ocupation3, ocupation4]
        private static let filter1 = RickAndMortyTestingManualQuery.Characters.Filter(name: "Rick",
                                                                                      species: "Human",
                                                                                      ocupation: ocupation1,
                                                                                      ocupations: ocupations)
        private static let filter2 = RickAndMortyTestingManualQuery.Characters.Character.CharacterFilter(location: "Space")
        private static let filter3 = RickAndMortyTestingManualQuery.Characters.Character.CharacterFilter(location: "Earth")
        private static let filter4 = RickAndMortyTestingManualQuery.Characters.Character.CharacterFilter(location: "Mars")
        private static let filters1 = [filter2]
        private static let filters2 = [filter3, nil]
        private static let filters3 = [nil, filter4]
        private nonisolated(unsafe) static let episodeId: ID = 23
        private nonisolated(unsafe) static let locationIDs: [ID] = ["23", 24]
        nonisolated(unsafe) static let query = RickAndMortyTestingManualQuery(page: 24,
                                                                              filter: filter1,
                                                                              filters: filters1,
                                                                              additionalFilters: nil,
                                                                              additionalFilters2: filters2,
                                                                              additionalFilters4: filters3,
                                                                              episodeID: episodeId,
                                                                              locationIds: locationIDs)
    }
}
