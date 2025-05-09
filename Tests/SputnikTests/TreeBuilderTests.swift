@testable import Sputnik
import XCTest

final class TreeBuilderTests: XCTestCase {
    func testQueryString1() async throws {
        // Given
        let query = RickAndMortyQueryMocks.MainTestingQuery.query
        let treeBuilder = TreeBuilder(satelite: query)
        try treeBuilder.buildTree()
        try treeBuilder.buildVariables()
        try treeBuilder.generateQueryString()
        let expectedQuery = """
        query RickAndMortyTestingQuery($page: Int, $filter: Filter, $filters: [CharacterFilter!]!, $additionalFilters: [CharacterFilter!], $additionalFilters2: [CharacterFilter], $additionalFilters3: [CharacterFilter]!, $episodeId: ID!, $locationIds: [ID!]!) {
          characters(page: $page, filter: $filter) {
            results(filters: $filters, additionalFilters: $additionalFilters, additionalFilters2: $additionalFilters2, additionalFilters3: $additionalFilters3) {
              id
              name
              species
              type
              gender
              created
              status
              origin {
                id
                name
                type
                dimension
                residents {
                  id
                  name
                  species
                  type
                  gender
                  created
                  status
                }
              }
            }
          }
          episode(id: $episodeId) {
            id
            name
            air_date
            episode
            created
            characters {
              name
              species
              type
              gender
              created
              status
              origin {
                id
                name
                type
                dimension
                residents {
                  name
                  species
                  type
                  gender
                  created
                  status
                }
              }
            }
          }
          locationsByIds(ids: $locationIds) {
            id
            name
            type
            dimension
            residents {
              name
              species
              type
              gender
              created
              status
            }
          }
        }
        """

        // When
        let queryString = treeBuilder.queryString

        // Then
        XCTAssertEqual(queryString, expectedQuery)
    }

    func testQueryString2() async throws {
        // Given
        let query = RickAndMortyQueryMocks.MainTestingManualQuery.query
        let treeBuilder = TreeBuilder(satelite: query)
        try treeBuilder.buildTree()
        try treeBuilder.buildVariables()
        try treeBuilder.generateQueryString()
        let expectedQuery = """
        query($page: Int, $filter: Filter, $filters: [CharacterFilter!]!, $additionalFilters: [CharacterFilter!], $additionalFilters2: [CharacterFilter], $additionalFilters4: [CharacterFilter]!, $episodeID: ID!, $locationIds: [ID!]!) {
          characters(page: $page, filter: $filter) {
            results(filters: $filters, additionalFilters: $additionalFilters, additionalFilters2: $additionalFilters2, additionalFilters3: $additionalFilters4) {
              id
              name
              species
              type
            }
          }
          episode(id: $episodeId) {
            id
            name
            air_date
            episode
            created
            characters {
              id
              name
              species
              type
              gender
              created
              status
              origin {
                id
                name
                type
                dimension
                residents {
                  id
                  name
                  species
                  type
                  gender
                  created
                  status
                }
              }
            }
          }
          locationsByIds(ids: $locationIds) {
            id
            name
            type
            dimension
            residents {
              id
              name
              species
              type
              gender
              created
              status
              origin {
                id
                name
                type
                dimension
                residents {
                  id
                  name
                  species
                  type
                  gender
                  created
                  status
                }
              }
            }
          }
        }
        """

        // When
        let queryString = treeBuilder.queryString

        // Then
        XCTAssertEqual(queryString, expectedQuery)
    }

    func testQueryStringSelectedValues() {
        // Given
        var query = RickAndMortyQueryMocks.MainTestingQuery.query
        query.episode.setSelections([.air_date, .episode, .characters])
        query.episode.characters.select.setSelections([.gender, .name, .created, .type, .origin])
        query.episode.characters.select.origin.setSelections([.name, .residents])
        query.episode.characters.select.origin.residents.select.setSelections([.gender])
        query.characters.results?.select.origin.setSelections([.dimension, .name, .id])
        query.characters.results?.select.setSelections([.origin, .name, .created, .species])
        query.locations.setSelections([.name])
        let treeBuilder = TreeBuilder(satelite: query)
        try? treeBuilder.buildTree()
        try? treeBuilder.buildVariables()
        try? treeBuilder.generateQueryString()

        let expectedQueryString = """
        query RickAndMortyTestingQuery($page: Int, $filter: Filter, $filters: [CharacterFilter!]!, $additionalFilters: [CharacterFilter!], $additionalFilters2: [CharacterFilter], $additionalFilters3: [CharacterFilter]!, $episodeId: ID!, $locationIds: [ID!]!) {
          characters(page: $page, filter: $filter) {
            results(filters: $filters, additionalFilters: $additionalFilters, additionalFilters2: $additionalFilters2, additionalFilters3: $additionalFilters3) {
              name
              species
              created
              origin {
                id
                name
                dimension
              }
            }
          }
          episode(id: $episodeId) {
            air_date
            episode
            characters {
              name
              type
              gender
              created
              origin {
                name
                residents {
                  gender
                }
              }
            }
          }
          locationsByIds(ids: $locationIds) {
            name
          }
        }
        """

        // When
        let queryString = treeBuilder.queryString

        // Then
        XCTAssertEqual(queryString, expectedQueryString)
    }

    func testQueryString3() async throws {
        // Given
        let mutation = AlbumMutationMocks.CreateAlbumMutationMain.mutation
        let treeBuilder = TreeBuilder(satelite: mutation)
        try treeBuilder.buildTree()
        try treeBuilder.buildVariables()
        try treeBuilder.generateQueryString()
        let expectedQueryString = """
        mutation CreateAlbum($input: CreateAlbumInput!) {
          createAlbum(input: $input) {
            title
          }
        }
        """

        // When
        let queryString = treeBuilder.queryString

        // Then
        XCTAssertEqual(queryString, expectedQueryString)
    }
}
