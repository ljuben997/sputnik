# Introducing Sputnik - An easy to use GraphQL API client where you write the query in plain swift structs
## No script writing, no code generating, no complex code

Sputnik allows you to write and execute complex GraphQL queries and mutations simply by writing them as structs in Swift. The idea is to write the struct as if you were writing a GraphQL query, select the exact data that you want to return and after executing the api request Sputnik automatically maps the response data into the same struct so you can use it in your code. 

There's no need to write additional code for this. All you have to do is use a couple of Macros on the selected struct and Sputnik automatically generates the code needed for mapping the data, value selection and more. 

Of course since this uses Swift Macros this is sadly only supported on projects which have a minimum version of **iOS 17**

As an example let's say we need to execute this query:

```swift
query findByType($type: MediaType, $userId: Int, $status: MediaListStatus) {
  MediaListCollection(type: $type, userId: $userId, status: $status) {
    hasNextChunk
    lists {
      name
      entries {
        media {
          description
          type
        }
        status
      }
    }
  }
}
```

All you have to do for it to work is write this code:
```swift
import SputnikMacros

@QueryOperation(name: "findByType")
struct AnimeQuery {
    @Property(name: "MediaListCollection")
    var mediaList: MediaListCollection
    
    @QuerySatellite
    struct MediaListCollection {
        @Variable
        var type: MediaType?
        @Variable
        var userId: Int?
        @Variable
        var status: MediaListStatus?
        var hasNextChunk: Bool
        var lists: [MediaListGroup]
        
        @QuerySatellite
        struct MediaListGroup {
            var name: String
            var entries: [MediaList]
            
            @QuerySatellite
            struct MediaList {
                var media: Media
                var status: MediaListStatus
                
                @QuerySatellite
                struct Media {
                    var description: String
                    var type: MediaType
                }
            }
        }
    }
}

@QueryEnum
enum MediaType: String {
    case anime = "ANIME"
    case manga = "MANGA"
}

@QueryEnum
enum MediaListStatus: String {
    case current = "CURRENT"
    case planning = "PLANNING"
    case completed = "COMPLETED"
    case dropped = "DROPPED"
}

```

After that just create your API which conforms to `SputnikGraphQLAPI` that will contain the url endpoint and headers:
```swift
struct AnimeAPI: SputnikGraphQLAPI {
    let urlEndpoint: String = "https://graphql.anilist.co"
    let headers: [String: String] = [:]
}
```

And of course make the call in the service:
```swift
func getMedia() async throws -> AnimeQuery {
    let variables = AnimeQuery.Variables(type: .anime, userId: 12, status: .completed)
    let query = AnimeQuery(variables: variables)
    let api = AnimeAPI()
    let requestMaker = SputnikRequestMaker(api: api)
    return try await requestMaker.makeRequest(operation: query)
}
```

Sputnik will then generate the query string using the data in the object, make the call and return a new copy of the same struct but with the data from the response automatically mapped.

But wait there's more. Let's say that you would like to execute the same query but now from the Media type to only get the description. There's no need to rewrite the whole query just without the type. All you have to do is use the `setSelections()` functions which the QuerySatellite macro automatically generates for each struct to specify exactly what you want to return from every type:
```swift
query.mediaList.lists.select.entries.setSelections([.media])
```

By default all the values are selected but by using `setSelections()` you can specify from each object exavtly what you want returned.

## Getting started
### - Query Macros
Currently there are 3 macros for writing queries: 
- QueryOperation(name: String? = nil, variableMapping: VariableMapping = .automatic)
- QueryMutation(name: String? = nil, variableMapping: VariableMapping = .automatic)
- QuerySatellite(schemaTypeName: String? = nil)

QueryOperation and QueryMutation should only be attached once at the primary struct to indicate that we are initiating either a query or a mutation. The `name` parameter is just the name for the query or mutation used for debugging purposes. The `variablesMapping` is explained further down. As written in the query above, QuerySatellite **must be added in every child struct othewise the mapping and setting up of the variables won't work.** Also each child QuerySatellite struct **has to be added nested inside of the QueryOperation or QueryMutation struct otherwise it won't work.** Example:
```swift
@QueryOperation
struct UserQuery {
    var users: [User]
}

@QuerySatellite
struct User {
    var name: String
}

```

**This will not work since the query satellite is defined outside the query's scope.**

The parameter `schemaTypeName` is used for mapping the variables mainly to get the type name of the variable as defined in the API schema **if the QuerySatellite is a variable object and the type name is different from the type name defined in the schema**:
```swift
@QueryOperation
struct UserQuery {
    @Varable var filter: Filter

    @QuerySatellite(schemaTypeName: "UserFilter")
    struct Filter {
        var name: String
        var age: Int
    }
}
```

In this example on the schema the type name is defined as "UserFilter" thus we also need to specify the schema type name here to match it. **It can work without this parameter if both the type in the schema and the type in the satellite have the same name**:
```swift
@QueryOperation
struct UserQuery {
    @Varable var filter: UserFilter

    @QuerySatellite
    struct UserFilter {
        var name: String
        var age: Int
    }
}
```

The macro then goes through all the structs, searches for the variables and creates a separate struct: `Variables` where the user, when initializing the query can set the required data for those same variables. QuerySatellite also generates an enum called `SelectedValues` and also an array where the developer can set the required values that they want to return:
```swift
@QuerySatellite
struct Character {
    var id: ID
    var name: String
    var species: String
    var type: String
    var gender: String
    var created: String
    var status: Status
    var origin: Location

    // Macro generated code.
    enum SelectableValue: String, CaseIterable {
        case id
        case name
        case species
        case type
        case gender
        case created
        case status
        case origin

        var __selectionName: String {
            self.rawValue
        }
    }

    var __selectedValues: [SelectableValue] = [.id, .name, .species, .type, .gender, .created, .status, .origin]
    
    mutating func setSelections(_ selections: [SelectableValue]) {
        __selectedValues = selections
    }
}
```

With this we can set the values we want to return easily through the `setSelections()` function.

### -  Property wrappers
We have 3 property wrappers designed to help us write the query:
- Variable
- Property
- Argument (Should only be used when writing a query with manual variable mapping)

`@Variable` should be used when we want to declare a property as a variable. The `name` parameter can be used if in the query string we want the variable to have a different name than the name of the var itself.

`@Property` is optional and only should be used when we want in the query string the property to have a different name than the `name` of the var itself so it can match the name defined in the schema.

`@Argument` is used in a query with manual argument mapping if we want to define an argument manually without attaching a variable to it. But if we want to have a variable we can have that with the `variableKey`parameter.

### - QueryEnum
The `QueryEnum`macro must be attached to every enum otherwise the mapping won't work.

### - Scalar
Sputnik also supports scalar values alongside with mapping values that are expressible by String, Int, Double and Bool to the respected scalar type and serializing them to a JSON value:
```swift
@Scalar(expressibleBy: [.string, .int, .double], valueType: Date.self, transformer: DateScalarTransformer.self)
struct DateScalar {}
```

In this code `expressibleBy` tells Sputnik by which literals can this scalar be expressed as, `valueType` is the actual type of the value generated within the scalar and `transformer` provides a class that has to initialize the object from a JSON value to the `valueType` and also serialize it back to a JSON value for when we make a request. Here is what the macro generates:
```swift
struct DateScalar {
    public var value: Date?
    let transformer = DateScalarTransformer.self
}

extension DateScalar: Dependencies.ScalarType, ExpressibleByStringLiteral, ExpressibleByIntegerLiteral, ExpressibleByFloatLiteral {
    public mutating func mapData(_ data: Any) {
        if let stringValue = data as? String {
            value = transformer.initialize(stringValue: stringValue)
        }
        if let intValue = data as? Int {
            value = transformer.initialize(intValue: intValue)
        }
        if let doubleValue = data as? Double {
            value = transformer.initialize(doubleValue: doubleValue)
        }
    }

    public init(stringLiteral value: String) {
        self.value = transformer.initialize(stringValue: value)
    }

    public init(integerLiteral value: Int) {
        self.value = transformer.initialize(intValue: value)
    }

    public init(floatLiteral value: FloatLiteralType) {
        self.value = transformer.initialize(doubleValue: value)
    }

    public var serializedValue: Dependencies.SerializedValue {
        transformer.serializedValue(value: value)
    }
}
```

Depending on the `expressibleBy` values the scalar will inherit from the `ExpressibleByStringLiteral`, `ExpressibleByIntegerLiteral`, `ExpressibleByDoubleLiteral` or `ExpressibleByBooleanLiteral` so that the scalar can be written like this example `let dateScalar: DateScalar = "2025-12-21"`. Sputnik then uses the provided transformer to initialize the value from the literal. By default sputnik has it's own transformer: `DefaultScalarTransformer` which just tries to cast the value literal to the object. This is a very basic logic and it's recommended to write a custom transformer that will have it's own transforming algorithm, like so:
```swift
class DateScalarTransformer: ScalarTransformer {
    typealias T = Date

    static func initialize(stringValue: String) -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        dateFormatter.timeZone = TimeZone(secondsFromGMT: 0)

        return dateFormatter.date(from: stringValue)
    }

    static func initialize(intValue: Int) -> Date? {
        let calendar = Calendar.current
        var components = DateComponents()
        components.year = intValue
        components.month = 1
        components.day = 1

        return calendar.date(from: components)
    }

    static func initialize(doubleValue: Double) -> Date? {
        let calendar = Calendar.current
        var components = DateComponents()
        components.year = Int(doubleValue)
        components.month = 1
        components.day = 1

        return calendar.date(from: components)
    }

    static func initialize(booleanValue _: Bool) -> Date? {
        nil
    }

    static func serializedValue(value: Date?) -> any SerializedValue {
        guard let value else { return "" }
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        return dateFormatter.string(from: value)
    }
}
```

Keep in mind when writing the transformer if it can't be expressible by that literal just return `nil` in the `initializer` function.

### - Error Handling
Sputnik also supports error handling. By default errors are being handled according to the [GraphQL documentation](https://graphql.org/learn/response/#errors "GraphQL documentation") where an array of `DefaultPartialError` objects is created:

```swift
public struct DefaultPartialError: ResponsePartialError {
    public let message: String
    public let locations: [ResponseErrorLocation]?
    public let path: [PathObject]?
    public let extensions: ResponseErrorExtension?

    public enum CodingKeys: CodingKey {
        case message
        case locations
        case path
        case extensions
    }

    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        message = try container.decode(String.self, forKey: .message)
        locations = try container.decodeIfPresent([ResponseErrorLocation].self, forKey: .locations)
        path = try container.decodeIfPresent([PathObject].self, forKey: .path)
        extensions = try container.decodeIfPresent(ResponseErrorExtension.self, forKey: .extensions)
    }

    public var errorDescription: String? {
        message
    }
}
```

There are two ways of handling the errors:
1. The response returns only the errors which means the api completely throws the errors as a `SputnikError.responseError([ResponsePartialError])` meaning you will have to handle the casting yourself: 
```swift
do {
    let _ = try await requestMaker.makeRequest(operation: query)
} catch {
    guard let error = error as? SputnikError,
    case let .responseError(partialErrors) = error else { return }
    let defaultPartialErrors = partialErrors.compactMap { $0 as? DefaultPartialError }
}
```
2. The response returns data along with errors. If this is the case the API client will not throw the errors but instead map them to the `partialErrors` property to the main query struct along with the rest of the data returned. Again the errors are of a `ResponsePartialError` type which means you will have to handle the casting to the default partial error:
```swift
let response = try await requestMaker.makeRequest(operation: query)
let partialErrors = response.partialError
let defaultPartialErrors = partialErrors.compactMap { $0 as? DefaultPartialError }
```

This decision to manually cast it was made because there are some APIs which do not return the errors in the `DefaultPartialError` format so for them a special struct has to be made and also use a special transformer to convert them to partial error objects. As an example let's take a look at this custom partial error along with the custom transformers:

```swift
public struct MockPartialError: ResponsePartialError {
    public let customMessage: String
    public let customLocations: [MockResponseErrorLocation]
    public let customExtensions: MockResponseErrorExtension?

    public enum CodingKeys: CodingKey {
        case customMessage
        case customLocations
        case customExtensions
    }

    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        customMessage = try container.decode(String.self, forKey: .customMessage)
        customLocations = try container.decode([MockResponseErrorLocation].self, forKey: .customLocations)
        customExtensions = try container.decodeIfPresent(MockResponseErrorExtension.self, forKey: .customExtensions)
    }

    public var errorDescription: String? {
        customMessage
    }
}

enum CustomError: Error {
    case customResponse([MockParitalError])
}

class MockErrorTransformer: ResponseErrorTransformer {
    static func transform(errors: [Any]) throws -> Error {
        let responseErrorData = try transformErrors(errors: errors)
        return CustomError.customResponse(responseErrorData)
    }

    static func transformErrors(errors: [Any]) throws -> [MockParitalError] {
        let data = try JSONSerialization.data(withJSONObject: errors)
        return try JSONDecoder().decode([MockParitalError].self, from: data)
    }
}

```

Then Inside your API you will need to put a refference to that transformer type:
```swift
struct AnimeAPI: SputnikGraphQLAPI {
    let urlEndpoint: String = "https://graphql.anilist.co"
    let headers: [String: String] = [:]
    let responseErrorTransformer: any ResponseErrorTransformer.Type = MockErrorTransformer.self
}
```

### - Configuration, Debugging and Mocking
Sputnik by default has one static global configuration which you can confugire in your project's startup configuration: 
```swift
@MainActor
func configure() {
  let debugConfiguration = DebugConfiguration(logOperation: true, logVariables: true, logResponse: true)
  SputnikAPIConfiguration.setNetworkMode(.mock)
  SputnikAPIConfiguration.setDebugConfiguration(debugConfiguration)
}
```

It also supports mocking. If you have a mock environment and want to setup some offline responses you can do so by using `addMockResponse()`:
```swift
SputnikAPIConfiguration.addMockResponse(for: RickAndMortyQuery.self, responseString: Constans.RickAndMortyAPIResponse)
```

Curretntly for global configurations you can only have **one response per query type**. For testing setting global mock responses is not reccomended since you might want to test multiple response for the same query type which might introduce data races and flaky tests. Thus you can create a custom configuration and use that when initializing the request maker:
```swift
let customConfiguration = SputnikAPIConfiguration(mode: .mock)
try customConfiguration.addMockResponse(for: RickAndMortyQuery.self, responseString: MockResponses.rickAndMortyQueryFailureResponse)
let query = RickAndMortyQuery(variables: variables)
let api = RickAndMortyAPI()
let requestMaker = SputnikRequestMaker(api: api, configuration: customConfiguration)
```
Sputnik also has a couple of debug options which can be set up either globaly for every request or add the configuration specifically per request when initializing the request maker. Currently the options are a bit limited, but for debugging, especially when the response returns an error and you don't know why, they get the job done:
```swift
public struct DebugConfiguration {
    let logOperation: Bool
    let logVariables: Bool
    let logResponse: Bool
}
```

### - Manual Variable Mapping
As mentioned above, the `@QueryOperation` macro has a parameter `variableMapping` which is an enum:
```swift
public enum VariableMapping: String {
    case automatic
    case manual
}
```

By default this is always set to `.automatic`. Setting it to `.manual` means that you will have to define the arguments yourself, define the variables yourself in the main operation and map each argument to the variable using the `variableKey` parameter:

```swift
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

@QuerySatellite
struct FilterCharacter {
    var name: String
    var species: String
}

@QuerySatellite
struct Info {
    var count: Int
    var pages: Int
    var next: Int?
    var prev: Int?
}

@QuerySatellite
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

@QuerySatellite
struct Location {
    @Argument(variableKey: "locationIds")
    var ids: [ID]
    var id: ID
    var name: String
    var type: String
    var dimension: String
    var residents: [Character]
}

@QuerySatellite
struct Characters {
    var info: Info
    var results: [Character]
    @Argument(variableKey: "page")
    var page: Int?
    @Argument(variableKey: "filter")
    var filter: FilterCharacter?
}

@QuerySatellite
struct Character {
    var id: ID
    var name: String
    var species: String
    var type: String
    var gender: String
    var created: String
    var status: Status
}
```

It also should be mentioned that if you go with this approach you don't need to nest the `@QuerySatellite` structs inside the operation, however this does risk a circular references error. You can also use this approach without define any variables and setting the arguments manually yourself when instantiating the object:

```swift
import SputnikMacros

@QueryOperation(name: "Characters", variableMapping: .manual)
struct RickAndMortyManualQuery {
    var characters: Characters
    var episode: Episode
    @Property(name: "locationsByIds")
    var locations: [Location]
}

@QuerySatellite
struct FilterCharacter {
    var name: String
    var species: String
}

@QuerySatellite
struct Info {
    var count: Int
    var pages: Int
    var next: Int?
    var prev: Int?
}

@QuerySatellite
struct Episode {
    @Argument
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

@QuerySatellite
struct Location {
    @Argument
    var ids: [ID]
    var id: ID
    var name: String
    var type: String
    var dimension: String
    var residents: [Character]
}

@QuerySatellite
struct Characters {
    var info: Info
    var results: [Character]
    @Argument
    var page: Int?
    @Argument
    var filter: FilterCharacter?
}

@QuerySatellite
struct Character {
    var id: ID
    var name: String
    var species: String
    var type: String
    var gender: String
    var created: String
    var status: Status
}

let filter = FilterCharacterArguments(name: "Rick", species: "Human")
var query = RIckAndMortyManualQueryNoVariables()
query.episode.id = 23
query.locations[0].ids = [12, 25]
query.characters.page = 1
query.characters.filter = filter
```

**Please note that this approach is not that very well tested and is not reccomended for use. I would always reccomend to use the first approach unless there are some small edge cases in your api where you can't use automatic variables and you absolutely have to use this method.**
