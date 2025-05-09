@testable import Sputnik

import XCTest

final class FetchTests: XCTestCase {
    override func setUp() async throws {
        await SputnikAPIConfiguration.setNetworkMode(.mock)
        try await SputnikAPIConfiguration.addMockResponse(for: RickAndMortyQuery.self, responseString: MockResponses.rickAndMortyMainQueryResponse)
        try await SputnikAPIConfiguration.addMockResponse(for: RickAndMortyManualQuery.self, responseString: MockResponses.rickAndMortyMainQueryResponse)
        try await SputnikAPIConfiguration.addMockResponse(for: RIckAndMortyManualQueryNoVariables.self, responseString: MockResponses.rickAndMortyMainQueryResponse)
        try await SputnikAPIConfiguration.addMockResponse(for: AnimeQuery.self, responseString: MockResponses.animeQueryResponse)
        try await SputnikAPIConfiguration.addMockResponse(for: CreateAlbumMutation.self, responseString: MockResponses.albumsMutationResponse)
    }

    @MainActor
    func testFetchRickAndMorty() async throws {
        let filter = RickAndMortyQuery.Characters.Filter(name: "Rick", species: "Human")
        let variables = RickAndMortyQuery.Variables(page: 1,
                                                    filter: filter,
                                                    episodeId: 23,
                                                    locationIds: ["12", "25"])
        let query = RickAndMortyQuery(variables: variables)
        let api = RickAndMortyAPI()
        let requestMaker = SputnikRequestMaker(api: api)
        let response = try await requestMaker.makeRequest(operation: query)
        XCTAssertEqual(response.episode.id, ID(value: nil))
        XCTAssertEqual(response.characters.page, nil)
        XCTAssertNil(response.characters.filter?.name)
        XCTAssertNil(response.characters.filter?.species)
        XCTAssertEqual(response.locations[0].ids, [ID(value: nil)])
        XCTAssertEqual(response.characters.info.count, 86)
        XCTAssertEqual(response.characters.info.pages, 5)
        XCTAssertEqual(response.characters.info.next, 2)
        XCTAssertNil(response.characters.info.prev)
        XCTAssertEqual(response.characters.results.count, 20)
        XCTAssertEqual(response.characters.results[0].id, 1)
        XCTAssertEqual(response.characters.results[0].created, "2017-11-04T18:48:46.250Z")
        XCTAssertEqual(response.characters.results[0].gender, "Male")
        XCTAssertEqual(response.characters.results[0].name, "Rick Sanchez")
        XCTAssertEqual(response.characters.results[0].species, "Human")
        XCTAssertEqual(response.characters.results[0].status, .alive)
        XCTAssertEqual(response.characters.results[0].type, "")
        XCTAssertEqual(response.characters.results[0].origin.id, 1)
        XCTAssertEqual(response.characters.results[0].origin.name, "Earth (C-137)")
        XCTAssertEqual(response.characters.results[0].origin.type, "Planet")
        XCTAssertEqual(response.characters.results[0].origin.dimension, "Dimension C-137")
        XCTAssertEqual(response.characters.results[0].origin.residents.count, 27)
        XCTAssertEqual(response.characters.results[0].origin.residents[0].id, 38)
        XCTAssertEqual(response.characters.results[0].origin.residents[0].name, "Beth Smith")
        XCTAssertEqual(response.characters.results[0].origin.residents[0].status, .alive)
        XCTAssertEqual(response.characters.results[0].origin.residents[0].gender, "Female")
        XCTAssertEqual(response.characters.results[0].origin.residents[0].type, "")
        XCTAssertEqual(response.episode.airDate, "July 30, 2017")
        XCTAssertEqual(response.episode.created, "2017-11-10T12:56:36.100Z")
        XCTAssertEqual(response.episode.episode, "S03E02")
        XCTAssertEqual(response.locations.count, 2)
        XCTAssertEqual(response.locations[0].dimension, "Cronenberg Dimension")
        XCTAssertEqual(response.locations[0].id, 12)
        XCTAssertEqual(response.locations[0].name, "Cronenberg Earth")
        XCTAssertEqual(response.locations[0].type, "Planet")
        XCTAssertEqual(response.locations[0].residents.count, 0)
        XCTAssertEqual(response.locations[1].dimension, "unknown")
        XCTAssertEqual(response.locations[1].id, 25)
        XCTAssertEqual(response.locations[1].name, "The Menagerie")
        XCTAssertEqual(response.locations[1].type, "Menagerie")
        XCTAssertEqual(response.locations[1].residents.count, 3)
    }

    @MainActor
    func testFetchRickAndMortyManual() async throws {
        let filter = FilterCharacter(name: "Rick", species: "Human")
        let query = RickAndMortyManualQuery(page: 1,
                                            filter: filter,
                                            episodeId: 23,
                                            locationIds: ["12", "25"])
        let api = RickAndMortyAPI()
        let requestMaker = SputnikRequestMaker(api: api)
        let response = try await requestMaker.makeRequest(operation: query)
        XCTAssertEqual(response.episode.id, ID(value: nil))
        XCTAssertNil(response.characters.page)
        XCTAssertNil(response.characters.filter?.name)
        XCTAssertNil(response.characters.filter?.species, "Human")
        XCTAssertEqual(response.locations[0].ids, [ID(value: nil)])
        XCTAssertEqual(response.episodeId, 23)
        XCTAssertEqual(response.page, 1)
        XCTAssertEqual(response.filter?.name, "Rick")
        XCTAssertEqual(response.filter?.species, "Human")
        XCTAssertEqual(response.locationIds, [12, 25])
        XCTAssertEqual(response.characters.info.count, 86)
        XCTAssertEqual(response.characters.info.pages, 5)
        XCTAssertEqual(response.characters.info.next, 2)
        XCTAssertNil(response.characters.info.prev)
        XCTAssertEqual(response.characters.results.count, 20)
        XCTAssertEqual(response.characters.results[0].id, 1)
        XCTAssertEqual(response.characters.results[0].created, "2017-11-04T18:48:46.250Z")
        XCTAssertEqual(response.characters.results[0].gender, "Male")
        XCTAssertEqual(response.characters.results[0].name, "Rick Sanchez")
        XCTAssertEqual(response.characters.results[0].species, "Human")
        XCTAssertEqual(response.characters.results[0].status, .alive)
        XCTAssertEqual(response.characters.results[0].type, "")
        XCTAssertEqual(response.characters.results[0].location.id, 1)
        XCTAssertEqual(response.characters.results[0].location.name, "Earth (C-137)")
        XCTAssertEqual(response.characters.results[0].location.type, "Planet")
        XCTAssertEqual(response.characters.results[0].location.dimension, "Dimension C-137")
        XCTAssertEqual(response.characters.results[0].location.residents.count, 27)
        XCTAssertEqual(response.characters.results[0].location.residents[0].id, 38)
        XCTAssertEqual(response.characters.results[0].location.residents[0].name, "Beth Smith")
        XCTAssertEqual(response.characters.results[0].location.residents[0].status, .alive)
        XCTAssertEqual(response.characters.results[0].location.residents[0].gender, "Female")
        XCTAssertEqual(response.characters.results[0].location.residents[0].type, "")
        XCTAssertEqual(response.episode.airDate, "July 30, 2017")
        XCTAssertEqual(response.episode.created, "2017-11-10T12:56:36.100Z")
        XCTAssertEqual(response.episode.episode, "S03E02")
        XCTAssertEqual(response.locations.count, 2)
        XCTAssertEqual(response.locations[0].dimension, "Cronenberg Dimension")
        XCTAssertEqual(response.locations[0].id, 12)
        XCTAssertEqual(response.locations[0].name, "Cronenberg Earth")
        XCTAssertEqual(response.locations[0].type, "Planet")
        XCTAssertEqual(response.locations[0].residents.count, 0)
        XCTAssertEqual(response.locations[1].dimension, "unknown")
        XCTAssertEqual(response.locations[1].id, 25)
        XCTAssertEqual(response.locations[1].name, "The Menagerie")
        XCTAssertEqual(response.locations[1].type, "Menagerie")
        XCTAssertEqual(response.locations[1].residents.count, 3)
    }

    @MainActor
    func testFetchRickAndMortyManualNoVariables() async throws {
        let filter = FilterCharacterArguments(name: "Rick", species: "Human")
        var query = RIckAndMortyManualQueryNoVariables()
        query.episode.id = 23
        query.locations[0].ids = [12, 25]
        query.characters.page = 1
        query.characters.filter = filter
        let api = RickAndMortyAPI()
        let requestMaker = SputnikRequestMaker(api: api)
        let response = try await requestMaker.makeRequest(operation: query)
        XCTAssertEqual(response.episode.id, 23)
        XCTAssertEqual(response.characters.page, 1)
        XCTAssertEqual(response.characters.filter.name, "Rick")
        XCTAssertEqual(response.characters.filter.species, "Human")
        XCTAssertEqual(response.locations[0].ids, [ID(value: nil)])
        XCTAssertEqual(response.characters.info.count, 86)
        XCTAssertEqual(response.characters.info.pages, 5)
        XCTAssertEqual(response.characters.info.next, 2)
        XCTAssertNil(response.characters.info.prev)
        XCTAssertEqual(response.characters.results.count, 20)
        XCTAssertEqual(response.characters.results[0].id, 1)
        XCTAssertEqual(response.characters.results[0].created, "2017-11-04T18:48:46.250Z")
        XCTAssertEqual(response.characters.results[0].gender, "Male")
        XCTAssertEqual(response.characters.results[0].name, "Rick Sanchez")
        XCTAssertEqual(response.characters.results[0].species, "Human")
        XCTAssertEqual(response.characters.results[0].status, .alive)
        XCTAssertEqual(response.characters.results[0].type, "")
        XCTAssertEqual(response.characters.results[0].location.id, 1)
        XCTAssertEqual(response.characters.results[0].location.name, "Earth (C-137)")
        XCTAssertEqual(response.characters.results[0].location.type, "Planet")
        XCTAssertEqual(response.characters.results[0].location.dimension, "Dimension C-137")
        XCTAssertEqual(response.characters.results[0].location.residents.count, 27)
        XCTAssertEqual(response.characters.results[0].location.residents[0].id, 38)
        XCTAssertEqual(response.characters.results[0].location.residents[0].name, "Beth Smith")
        XCTAssertEqual(response.characters.results[0].location.residents[0].status, .alive)
        XCTAssertEqual(response.characters.results[0].location.residents[0].gender, "Female")
        XCTAssertEqual(response.characters.results[0].location.residents[0].type, "")
        XCTAssertEqual(response.episode.airDate, "July 30, 2017")
        XCTAssertEqual(response.episode.created, "2017-11-10T12:56:36.100Z")
        XCTAssertEqual(response.episode.episode, "S03E02")
        XCTAssertEqual(response.locations.count, 2)
        XCTAssertEqual(response.locations[0].dimension, "Cronenberg Dimension")
        XCTAssertEqual(response.locations[0].id, 12)
        XCTAssertEqual(response.locations[0].name, "Cronenberg Earth")
        XCTAssertEqual(response.locations[0].type, "Planet")
        XCTAssertEqual(response.locations[0].residents.count, 0)
        XCTAssertEqual(response.locations[1].dimension, "unknown")
        XCTAssertEqual(response.locations[1].id, 25)
        XCTAssertEqual(response.locations[1].name, "The Menagerie")
        XCTAssertEqual(response.locations[1].type, "Menagerie")
        XCTAssertEqual(response.locations[1].residents.count, 3)
    }

    @MainActor
    func testFetchAnime() async throws {
        let animeVariables = AnimeQuery.Variables(type: .manga, userId: 25, status: .completed)
        let query = AnimeQuery(variables: animeVariables)
        let api = AnimeAPI()
        let requestMaker = SputnikRequestMaker(api: api)
        let response = try await requestMaker.makeRequest(operation: query)
        XCTAssertEqual(response.mediaList.lists[0].name, "Completed")
    }

    @MainActor
    func testAlbumsMutation() async throws {
        let mutation = AlbumMutationMocks.CreateAlbumMutationMain.mutation
        let api = AlbumsAPI()
        let requestMaker = SputnikRequestMaker(api: api)
        let response = try await requestMaker.makeRequest(operation: mutation)
        XCTAssertEqual(response.album.title, "Album Title")
    }

    @MainActor
    func testRickAndMortyFailure() async throws {
        let customConfiguration = SputnikAPIConfiguration(mode: .mock)
        try customConfiguration.addMockResponse(for: RickAndMortyQuery.self, responseString: MockResponses.rickAndMortyQueryFailureResponse)
        let filter = RickAndMortyQuery.Characters.Filter(name: "Rick", species: "Human")
        let variables = RickAndMortyQuery.Variables(page: 1,
                                                    filter: filter,
                                                    episodeId: 23,
                                                    locationIds: ["12", "25"])
        let query = RickAndMortyQuery(variables: variables)
        let api = RickAndMortyAPI()
        let requestMaker = SputnikRequestMaker(api: api, configuration: customConfiguration)
        do {
            let _ = try await requestMaker.makeRequest(operation: query)
            XCTFail()
        } catch {
            guard let error = error as? SputnikError,
                  case let .responseError(partialErrors) = error
            else {
                XCTFail()
                return
            }
            let defaultPartialErrors = partialErrors.compactMap { $0 as? DefaultPartialError }
            XCTAssertEqual(defaultPartialErrors[0].message, "Expected type Int, found 1234")
            XCTAssertEqual(defaultPartialErrors[0].locations?[0].line, 2)
            XCTAssertEqual(defaultPartialErrors[0].locations?[0].column, 20)
            XCTAssertEqual(defaultPartialErrors[0].extensions?.code, "GRAPHQL_VALIDATION_FAILED")
            XCTAssertEqual(defaultPartialErrors[1].message, "Variable $episodeId is not defined by operation Characters.")
            XCTAssertEqual(defaultPartialErrors[1].locations?[0].line, 39)
            XCTAssertEqual(defaultPartialErrors[1].locations?[0].column, 15)
            XCTAssertEqual(defaultPartialErrors[1].locations?[1].line, 1)
            XCTAssertEqual(defaultPartialErrors[1].locations?[1].column, 1)
            XCTAssertEqual(defaultPartialErrors[1].extensions?.code, "GRAPHQL_VALIDATION_FAILED")
            XCTAssertEqual(defaultPartialErrors[2].message, "Variable locationIds is not defined by operation Characters.")
            XCTAssertEqual(defaultPartialErrors[2].locations?[0].line, 72)
            XCTAssertEqual(defaultPartialErrors[2].locations?[0].column, 23)
            XCTAssertEqual(defaultPartialErrors[2].locations?[1].line, 1)
            XCTAssertEqual(defaultPartialErrors[2].locations?[1].column, 1)
            XCTAssertEqual(defaultPartialErrors[2].extensions?.code, "GRAPHQL_VALIDATION_FAILED")
        }
    }

    @MainActor
    func testRickAndMortySuccessPartialErrors() async throws {
        let customConfiguration = SputnikAPIConfiguration(mode: .mock)
        try customConfiguration.addMockResponse(for: RickAndMortyQuery.self, responseString: MockResponses.rickAndMortyQueryPartialErrors)
        let filter = RickAndMortyQuery.Characters.Filter(name: "Rick", species: "Human")
        let variables = RickAndMortyQuery.Variables(page: 1,
                                                    filter: filter,
                                                    episodeId: 23,
                                                    locationIds: ["12", "25"])
        let query = RickAndMortyQuery(variables: variables)
        let api = RickAndMortyAPI()
        let requestMaker = SputnikRequestMaker(api: api, configuration: customConfiguration)
        let response = try await requestMaker.makeRequest(operation: query)
        let partialErrors = response.partialErrors
        let defaultPartialErrors = partialErrors.compactMap { $0 as? DefaultPartialError }
        XCTAssertEqual(response.characters.results[0].id, 1)
        XCTAssertEqual(response.characters.results[0].name, "Rick Sanchez")
        XCTAssertEqual(response.characters.results[0].species, "Human")
        XCTAssertEqual(defaultPartialErrors[0].message, "Expected type Int, found 1234")
        XCTAssertEqual(defaultPartialErrors[0].locations?[0].line, 2)
        XCTAssertEqual(defaultPartialErrors[0].locations?[0].column, 20)
        XCTAssertEqual(defaultPartialErrors[0].extensions?.code, "GRAPHQL_VALIDATION_FAILED")
        XCTAssertEqual(defaultPartialErrors[1].message, "Variable $episodeId is not defined by operation Characters.")
        XCTAssertEqual(defaultPartialErrors[1].locations?[0].line, 39)
        XCTAssertEqual(defaultPartialErrors[1].locations?[0].column, 15)
        XCTAssertEqual(defaultPartialErrors[1].locations?[1].line, 1)
        XCTAssertEqual(defaultPartialErrors[1].locations?[1].column, 1)
        XCTAssertEqual(defaultPartialErrors[1].extensions?.code, "GRAPHQL_VALIDATION_FAILED")
        XCTAssertEqual(defaultPartialErrors[2].message, "Variable locationIds is not defined by operation Characters.")
        XCTAssertEqual(defaultPartialErrors[2].locations?[0].line, 72)
        XCTAssertEqual(defaultPartialErrors[2].locations?[0].column, 23)
        XCTAssertEqual(defaultPartialErrors[2].locations?[1].line, 1)
        XCTAssertEqual(defaultPartialErrors[2].locations?[1].column, 1)
        XCTAssertEqual(defaultPartialErrors[2].extensions?.code, "GRAPHQL_VALIDATION_FAILED")
    }
}
