@testable import Sputnik
import XCTest

final class JSONValueTests: XCTestCase {
    func testSerializedTypeVariable() async throws {
        // Given
        let intValue = JSONValue<VariableNode>.serialized(value: 25)
        let stringValue = JSONValue<VariableNode>.serialized(value: "String")
        let doubleValue = JSONValue<VariableNode>.serialized(value: 25.23)
        let boolValue = JSONValue<VariableNode>.serialized(value: true)

        // When
        let intResult = try intValue.toJsonDictionaryValue
        let stringResult = try stringValue.toJsonDictionaryValue
        let doubleResult = try doubleValue.toJsonDictionaryValue
        let boolResult = try boolValue.toJsonDictionaryValue

        // Then
        XCTAssertEqual(intResult as? Int, 25)
        XCTAssertEqual(stringResult as? String, "String")
        XCTAssertEqual(doubleResult as? Double, 25.23)
        XCTAssertEqual(boolResult as? Bool, true)
    }

    func testSerializedTypeArguments() async throws {
        // Given
        let intValue = JSONValue<ArgumentNode>.serialized(value: 25)
        let stringValue = JSONValue<ArgumentNode>.serialized(value: "String")
        let doubleValue = JSONValue<ArgumentNode>.serialized(value: 25.23)
        let boolValue = JSONValue<ArgumentNode>.serialized(value: true)

        // When
        let intResult = try intValue.toArgumentsString
        let stringResult = try stringValue.toArgumentsString
        let doubleResult = try doubleValue.toArgumentsString
        let boolResult = try boolValue.toArgumentsString

        // Then
        XCTAssertEqual(intResult, "25")
        XCTAssertEqual(stringResult, "\"String\"")
        XCTAssertEqual(doubleResult, "25.23")
        XCTAssertEqual(boolResult, "true")
    }

    func testScalarTypeVariables() async throws {
        // Given
        let dateScalar1: DateScalar = "2025-12-13"
        let scalarValue1 = JSONValue<VariableNode>.scalar(value: dateScalar1)
        let dateScalar2: DateScalar = 2023
        let scalarValue2 = JSONValue<VariableNode>.scalar(value: dateScalar2)
        let dateScalar3: DateScalar = 2022.231
        let scalarValue3 = JSONValue<VariableNode>.scalar(value: dateScalar3)

        // When
        let result1 = try scalarValue1.toJsonDictionaryValue
        let result2 = try scalarValue2.toJsonDictionaryValue
        let result3 = try scalarValue3.toJsonDictionaryValue

        // Then
        XCTAssertEqual(result1 as? String, "2025-12-13")
        XCTAssertEqual(result2 as? String, "2023-01-01")
        XCTAssertEqual(result3 as? String, "2022-01-01")
    }

    func testScalarTypeArguments() async throws {
        // Given
        let dateScalar1: DateScalar = "2025-12-13"
        let scalarValue1 = JSONValue<ArgumentNode>.scalar(value: dateScalar1)
        let dateScalar2: DateScalar = 2023
        let scalarValue2 = JSONValue<ArgumentNode>.scalar(value: dateScalar2)
        let dateScalar3: DateScalar = 2022.231
        let scalarValue3 = JSONValue<ArgumentNode>.scalar(value: dateScalar3)

        // When
        let result1 = try scalarValue1.toArgumentsString
        let result2 = try scalarValue2.toArgumentsString
        let result3 = try scalarValue3.toArgumentsString

        // Then
        XCTAssertEqual(result1, "\"2025-12-13\"")
        XCTAssertEqual(result2, "\"2023-01-01\"")
        XCTAssertEqual(result3, "\"2022-01-01\"")
    }

    func testRawRepresentableTypeVariables() async throws {
        // Given
        let value = try JSONValue<VariableNode>(childValue: Status.alive)

        // When
        let result = try value.toJsonDictionaryValue

        // Then
        XCTAssertEqual(result as? String, "Alive")
    }

    func testRawRepresentableTypeArguments() async throws {
        // Given
        let value = try JSONValue<ArgumentNode>(childValue: Status.alive)

        // When
        let result = try value.toArgumentsString

        // Then
        XCTAssertEqual(result, "\"Alive\"")
    }

    func testObjectTypeVariables() async throws {
        // Given
        let value = try JSONValue<VariableNode>(childValue: Person(name: "Messmer", age: 25))

        // When
        let result = try value.toJsonDictionaryValue as? [String: Any]

        // Then
        XCTAssertEqual(result?["name"] as? String, "Messmer")
        XCTAssertEqual(result?["age"] as? Int, 25)
    }

    func testObjectTypeArguments() async throws {
        // Given
        let value = try JSONValue<ArgumentNode>(childValue: Person(name: "Malenia", age: 25))

        // When
        let result = try value.toArgumentsString

        // Then
        XCTAssertEqual(result, "{ name: \"Malenia\", age: 25 }")
    }

    func testOptionalTypeVariables() async throws {
        // Given
        let string1: String? = nil
        let string2: String? = "Test"
        let object1: Person? = nil
        let object2: Person? = Person(name: "Radahn", age: 25)
        let array1: [Int]? = nil
        let array2: [Int]? = [1, 2, 3]
        let value1 = try JSONValue<VariableNode>(childValue: string1 as Any)
        let value2 = try JSONValue<VariableNode>(childValue: string2 as Any)
        let value3 = try JSONValue<VariableNode>(childValue: object1 as Any)
        let value4 = try JSONValue<VariableNode>(childValue: object2 as Any)
        let value5 = try JSONValue<VariableNode>(childValue: array1 as Any)
        let value6 = try JSONValue<VariableNode>(childValue: array2 as Any)

        // When
        let result1 = try value1.toJsonDictionaryValue
        let result2 = try value2.toJsonDictionaryValue
        let result3 = try value3.toJsonDictionaryValue
        let result4 = try value4.toJsonDictionaryValue as? [String: Any]
        let result5 = try value5.toJsonDictionaryValue
        let result6 = try value6.toJsonDictionaryValue as? [Int]

        XCTAssertNil(result1)
        XCTAssertEqual(result2 as? String, "Test")
        XCTAssertNil(result3)
        XCTAssertEqual(result4?["name"] as? String, "Radahn")
        XCTAssertEqual(result4?["age"] as? Int, 25)
        XCTAssertNil(result5)
        XCTAssertEqual(result6, [1, 2, 3])
    }

    func testOptionalTypeArguments() async throws {
        // Given
        let string1: String? = nil
        let string2: String? = "Test"
        let object1: Person? = nil
        let object2: Person? = Person(name: "Rani", age: 25)
        let array1: [Int]? = nil
        let array2: [Int]? = [1, 2, 3]
        let value1 = try JSONValue<ArgumentNode>(childValue: string1 as Any)
        let value2 = try JSONValue<ArgumentNode>(childValue: string2 as Any)
        let value3 = try JSONValue<ArgumentNode>(childValue: object1 as Any)
        let value4 = try JSONValue<ArgumentNode>(childValue: object2 as Any)
        let value5 = try JSONValue<ArgumentNode>(childValue: array1 as Any)
        let value6 = try JSONValue<ArgumentNode>(childValue: array2 as Any)

        // When
        let result1 = try value1.toArgumentsString
        let result2 = try value2.toArgumentsString
        let result3 = try value3.toArgumentsString
        let result4 = try value4.toArgumentsString
        let result5 = try value5.toArgumentsString
        let result6 = try value6.toArgumentsString

        XCTAssertEqual(result1, "null")
        XCTAssertEqual(result2, "\"Test\"")
        XCTAssertEqual(result3, "null")
        XCTAssertEqual(result4, "{ name: \"Rani\", age: 25 }")
        XCTAssertEqual(result5, "null")
        XCTAssertEqual(result6, "[1, 2, 3]")
    }

    func testArrayTypeVariables() async throws {
        // Given
        let array1: [Int] = [1, 2, 3]
        let array2: [Int] = []
        let array3: [Person] = [Person(name: "Bayle", age: 10002)]
        let value1 = try JSONValue<VariableNode>(childValue: array1)
        let value2 = try JSONValue<VariableNode>(childValue: array2)
        let value3 = try JSONValue<VariableNode>(childValue: array3)

        // When
        let result1 = try value1.toJsonDictionaryValue as? [Int]
        let result2 = try value2.toJsonDictionaryValue as? [Int]
        let result3 = try value3.toJsonDictionaryValue as? [[String: Any]]

        //
        XCTAssertEqual(result1, [1, 2, 3])
        XCTAssertEqual(result2, [])
        XCTAssertEqual(result3?[0]["name"] as? String, "Bayle")
        XCTAssertEqual(result3?[0]["age"] as? Int, 10002)
    }

    func testArrayTypeArguments() async throws {
        // Given
        let array1: [Int] = [1, 2, 3]
        let array2: [Int] = []
        let array3: [Person] = [Person(name: "Bayle", age: 10002), Person(name: "Placidusax", age: 10003)]
        let value1 = try JSONValue<ArgumentNode>(childValue: array1)
        let value2 = try JSONValue<ArgumentNode>(childValue: array2)
        let value3 = try JSONValue<ArgumentNode>(childValue: array3)

        // When
        let result1 = try value1.toArgumentsString
        let result2 = try value2.toArgumentsString
        let result3 = try value3.toArgumentsString

        //
        XCTAssertEqual(result1, "[1, 2, 3]")
        XCTAssertEqual(result2, "[]")
        XCTAssertEqual(result3, "[{ name: \"Bayle\", age: 10002 }, { name: \"Placidusax\", age: 10003 }]")
    }
}
