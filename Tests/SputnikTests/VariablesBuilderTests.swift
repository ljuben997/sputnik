@testable import Sputnik
import XCTest

final class VariablesBuilderTests: XCTestCase {
    func testBuidAutomaticVariables() async throws {
        let builder = AutomaticVariablesBuilder()
        let variables = try builder.buildVariables(for: RickAndMortyQueryMocks.MainTestingQuery.query)
        XCTAssertEqual(variables.count, 8)
        XCTAssertEqual(variables[0].name, "page")
        guard case let .optional(optionalValue) = variables[0].value,
              let unwrappedValue = optionalValue,
              case let .serialized(value) = unwrappedValue
        else {
            XCTFail()
            return
        }
        XCTAssertEqual(value as? Int, 24)
        XCTAssertEqual(variables[1].name, "filter")
        guard case let .optional(optionalValue) = variables[1].value,
              let unwrappedValue = optionalValue,
              case let .object(filter) = unwrappedValue
        else {
            XCTFail()
            return
        }
        XCTAssertEqual(filter[0].name, "name")
        guard case let .serialized(name) = filter[0].value else {
            XCTFail()
            return
        }
        XCTAssertEqual(name as? String, "Rick")
        XCTAssertEqual(filter[1].name, "species")
        guard case let .serialized(name) = filter[1].value else {
            XCTFail()
            return
        }
        XCTAssertEqual(name as? String, "Human")
        XCTAssertEqual(filter[2].name, "ocupation")
        guard case let .optional(optionalValue) = filter[2].value,
              let unwrappedValue = optionalValue,
              case let .object(occupation) = unwrappedValue
        else {
            XCTFail()
            return
        }
        XCTAssertEqual(occupation[0].name, "name")
        guard case let .serialized(name) = occupation[0].value else {
            XCTFail()
            return
        }
        XCTAssertEqual(name as? String, "Scientist")
        XCTAssertEqual(occupation[1].name, "type")
        guard case let .serialized(name) = occupation[1].value else {
            XCTFail()
            return
        }
        XCTAssertEqual(name as? String, "Science")
        XCTAssertEqual(filter[3].name, "ocupations")
        guard case let .array(occupations) = filter[3].value else {
            XCTFail()
            return
        }
        guard case let .object(firstOccupation) = occupations[0] else {
            XCTFail()
            return
        }
        XCTAssertEqual(firstOccupation[0].name, "name")
        guard case let .serialized(name) = firstOccupation[0].value else {
            XCTFail()
            return
        }
        XCTAssertEqual(name as? String, "Programmer")
        XCTAssertEqual(firstOccupation[1].name, "type")
        guard case let .serialized(name) = firstOccupation[1].value else {
            XCTFail()
            return
        }
        XCTAssertEqual(name as? String, "Programming")
        guard case let .object(secondOccupation) = occupations[1] else {
            XCTFail()
            return
        }
        XCTAssertEqual(secondOccupation[0].name, "name")
        guard case let .serialized(name) = secondOccupation[0].value else {
            XCTFail()
            return
        }
        XCTAssertEqual(name as? String, "Architect")
        XCTAssertEqual(secondOccupation[1].name, "type")
        guard case let .serialized(name) = secondOccupation[1].value else {
            XCTFail()
            return
        }
        XCTAssertEqual(name as? String, "Architecture")
        guard case let .object(thirdOccupation) = occupations[2] else {
            XCTFail()
            return
        }
        XCTAssertEqual(thirdOccupation[0].name, "name")
        guard case let .serialized(name) = thirdOccupation[0].value else {
            XCTFail()
            return
        }
        XCTAssertEqual(name as? String, "Artist")
        XCTAssertEqual(thirdOccupation[1].name, "type")
        guard case let .serialized(name) = thirdOccupation[1].value else {
            XCTFail()
            return
        }
        XCTAssertEqual(name as? String, "Art")
        XCTAssertEqual(variables[2].name, "filters")
        guard case let .array(filters) = variables[2].value else {
            XCTFail()
            return
        }
        XCTAssertEqual(filters.count, 1)
        guard case let .object(filter) = filters[0] else {
            XCTFail()
            return
        }
        XCTAssertEqual(filter[0].name, "location")
        guard case let .serialized(value) = filter[0].value else {
            XCTFail()
            return
        }
        XCTAssertEqual(value as? String, "Space")
        XCTAssertEqual(variables[3].name, "additionalFilters")
        guard case let .optional(value) = variables[3].value else {
            XCTFail()
            return
        }
        XCTAssertNil(value)
        XCTAssertEqual(variables[4].name, "additionalFilters2")
        guard case let .optional(value) = variables[4].value,
              let unwrappedValue = value,
              case let .array(filters) = unwrappedValue
        else {
            XCTFail()
            return
        }
        guard case let .optional(value) = filters[0],
              let unwrappedValue = value,
              case let .object(filter) = unwrappedValue
        else {
            XCTFail()
            return
        }
        XCTAssertEqual(filter[0].name, "location")
        guard case let .serialized(value) = filter[0].value else {
            XCTFail()
            return
        }
        XCTAssertEqual(value as? String, "Earth")
        guard case let .optional(value) = filters[1] else {
            XCTFail()
            return
        }
        XCTAssertNil(value)
        XCTAssertEqual(variables[5].name, "additionalFilters3")
        guard case let .array(filters) = variables[5].value else {
            XCTFail()
            return
        }
        guard case let .optional(value) = filters[1],
              let unwrappedValue = value,
              case let .object(filter) = unwrappedValue
        else {
            XCTFail()
            return
        }
        XCTAssertEqual(filter[0].name, "location")
        guard case let .serialized(value) = filter[0].value else {
            XCTFail()
            return
        }
        XCTAssertEqual(value as? String, "Mars")
        guard case let .optional(value) = filters[0] else {
            XCTFail()
            return
        }
        XCTAssertNil(value)
        XCTAssertEqual(variables[6].name, "episodeId")
        guard case let .scalar(value) = variables[6].value else {
            XCTFail()
            return
        }
        XCTAssert(value.serializedValue as? Int == 23)
        XCTAssertEqual(variables[7].name, "locationIds")
        guard case let .array(locationIds) = variables[7].value else {
            XCTFail()
            return
        }
        guard case let .scalar(firstLocation) = locationIds[0],
              case let .scalar(secondLocation) = locationIds[1]
        else {
            XCTFail()
            return
        }
        XCTAssertEqual(firstLocation.serializedValue as? Int, 23)
        XCTAssertEqual(secondLocation.serializedValue as? Int, 24)
    }

    func testGetAutomaticVariablesString() async throws {
        let builder = AutomaticVariablesBuilder()
        let rootQueryString = try builder.getRootVariablesString(for: RickAndMortyQueryMocks.MainTestingQuery.query)
        let expextedQueryString = "($page: Int, $filter: Filter, $filters: [CharacterFilter!]!, $additionalFilters: [CharacterFilter!], $additionalFilters2: [CharacterFilter], $additionalFilters3: [CharacterFilter]!, $episodeId: ID!, $locationIds: [ID!]!)"
        XCTAssertEqual(rootQueryString, expextedQueryString)
    }

    func testBuildManualVariables() async throws {
        let builder = ManualVariablesBuilder()
        let variables = try builder.buildVariables(for: RickAndMortyQueryMocks.MainTestingManualQuery.query)
        XCTAssertEqual(variables.count, 8)
        XCTAssertEqual(variables[0].name, "page")
        guard case let .optional(optionalValue) = variables[0].value,
              let unwrappedValue = optionalValue,
              case let .serialized(value) = unwrappedValue
        else {
            XCTFail()
            return
        }
        XCTAssertEqual(value as? Int, 24)
        XCTAssertEqual(variables[1].name, "filter")
        guard case let .optional(optionalValue) = variables[1].value,
              let unwrappedValue = optionalValue,
              case let .object(filter) = unwrappedValue
        else {
            XCTFail()
            return
        }
        XCTAssertEqual(filter[0].name, "name")
        guard case let .serialized(name) = filter[0].value else {
            XCTFail()
            return
        }
        XCTAssertEqual(name as? String, "Rick")
        XCTAssertEqual(filter[1].name, "species")
        guard case let .serialized(name) = filter[1].value else {
            XCTFail()
            return
        }
        XCTAssertEqual(name as? String, "Human")
        XCTAssertEqual(filter[2].name, "ocupation")
        guard case let .optional(optionalValue) = filter[2].value,
              let unwrappedValue = optionalValue,
              case let .object(occupation) = unwrappedValue
        else {
            XCTFail()
            return
        }
        XCTAssertEqual(occupation[0].name, "name")
        guard case let .serialized(name) = occupation[0].value else {
            XCTFail()
            return
        }
        XCTAssertEqual(name as? String, "Scientist")
        XCTAssertEqual(occupation[1].name, "type")
        guard case let .serialized(name) = occupation[1].value else {
            XCTFail()
            return
        }
        XCTAssertEqual(name as? String, "Science")
        XCTAssertEqual(filter[3].name, "ocupations")
        guard case let .array(occupations) = filter[3].value else {
            XCTFail()
            return
        }
        guard case let .object(firstOccupation) = occupations[0] else {
            XCTFail()
            return
        }
        XCTAssertEqual(firstOccupation[0].name, "name")
        guard case let .serialized(name) = firstOccupation[0].value else {
            XCTFail()
            return
        }
        XCTAssertEqual(name as? String, "Programmer")
        XCTAssertEqual(firstOccupation[1].name, "type")
        guard case let .serialized(name) = firstOccupation[1].value else {
            XCTFail()
            return
        }
        XCTAssertEqual(name as? String, "Programming")
        guard case let .object(secondOccupation) = occupations[1] else {
            XCTFail()
            return
        }
        XCTAssertEqual(secondOccupation[0].name, "name")
        guard case let .serialized(name) = secondOccupation[0].value else {
            XCTFail()
            return
        }
        XCTAssertEqual(name as? String, "Architect")
        XCTAssertEqual(secondOccupation[1].name, "type")
        guard case let .serialized(name) = secondOccupation[1].value else {
            XCTFail()
            return
        }
        XCTAssertEqual(name as? String, "Architecture")
        guard case let .object(thirdOccupation) = occupations[2] else {
            XCTFail()
            return
        }
        XCTAssertEqual(thirdOccupation[0].name, "name")
        guard case let .serialized(name) = thirdOccupation[0].value else {
            XCTFail()
            return
        }
        XCTAssertEqual(name as? String, "Artist")
        XCTAssertEqual(thirdOccupation[1].name, "type")
        guard case let .serialized(name) = thirdOccupation[1].value else {
            XCTFail()
            return
        }
        XCTAssertEqual(name as? String, "Art")
        XCTAssertEqual(variables[2].name, "filters")
        guard case let .array(filters) = variables[2].value else {
            XCTFail()
            return
        }
        XCTAssertEqual(filters.count, 1)
        guard case let .object(filter) = filters[0] else {
            XCTFail()
            return
        }
        XCTAssertEqual(filter[0].name, "location")
        guard case let .serialized(value) = filter[0].value else {
            XCTFail()
            return
        }
        XCTAssertEqual(value as? String, "Space")
        XCTAssertEqual(variables[3].name, "additionalFilters")
        guard case let .optional(value) = variables[3].value else {
            XCTFail()
            return
        }
        XCTAssertNil(value)
        XCTAssertEqual(variables[4].name, "additionalFilters2")
        guard case let .optional(value) = variables[4].value,
              let unwrappedValue = value,
              case let .array(filters) = unwrappedValue
        else {
            XCTFail()
            return
        }
        guard case let .optional(value) = filters[0],
              let unwrappedValue = value,
              case let .object(filter) = unwrappedValue
        else {
            XCTFail()
            return
        }
        XCTAssertEqual(filter[0].name, "location")
        guard case let .serialized(value) = filter[0].value else {
            XCTFail()
            return
        }
        XCTAssertEqual(value as? String, "Earth")
        guard case let .optional(value) = filters[1] else {
            XCTFail()
            return
        }
        XCTAssertNil(value)
        XCTAssertEqual(variables[5].name, "additionalFilters4")
        guard case let .array(filters) = variables[5].value else {
            XCTFail()
            return
        }
        guard case let .optional(value) = filters[1],
              let unwrappedValue = value,
              case let .object(filter) = unwrappedValue
        else {
            XCTFail()
            return
        }
        XCTAssertEqual(filter[0].name, "location")
        guard case let .serialized(value) = filter[0].value else {
            XCTFail()
            return
        }
        XCTAssertEqual(value as? String, "Mars")
        guard case let .optional(value) = filters[0] else {
            XCTFail()
            return
        }
        XCTAssertNil(value)
        XCTAssertEqual(variables[6].name, "episodeID")
        guard case let .scalar(value) = variables[6].value else {
            XCTFail()
            return
        }
        XCTAssert(value.serializedValue as? Int == 23)
        XCTAssertEqual(variables[7].name, "locationIds")
        guard case let .array(locationIds) = variables[7].value else {
            XCTFail()
            return
        }
        guard case let .scalar(firstLocation) = locationIds[0],
              case let .scalar(secondLocation) = locationIds[1]
        else {
            XCTFail()
            return
        }
        XCTAssertEqual(firstLocation.serializedValue as? Int, 23)
        XCTAssertEqual(secondLocation.serializedValue as? Int, 24)
    }

    func testGetManualVariablesQueryString() async throws {
        let builder = ManualVariablesBuilder()
        let rootQueryString = try builder.getRootVariablesString(for: RickAndMortyQueryMocks.MainTestingManualQuery.query)
        let expextedQueryString = "($page: Int, $filter: Filter, $filters: [CharacterFilter!]!, $additionalFilters: [CharacterFilter!], $additionalFilters2: [CharacterFilter], $additionalFilters4: [CharacterFilter]!, $episodeID: ID!, $locationIds: [ID!]!)"
        XCTAssertEqual(rootQueryString, expextedQueryString)
    }
}
