@testable import Sputnik
import XCTest

final class TypeGeneratorTests: XCTestCase {
    func testTransformType() async {
        // Given
        let person1 = Person(name: "John", age: 30)
        let person2: Person? = Person(name: "John", age: 30)
        let person3: [Person] = [Person(name: "John", age: 30), Person(name: "John", age: 30)]
        let person4: [Person?] = [person1, person2, nil]
        let person5: [Person?]? = nil
        let person6: [Person]? = []
        let type1 = type(of: person1)
        let type2 = type(of: person2)
        let type3 = type(of: person3)
        let type4 = type(of: person4)
        let type5 = type(of: person5)
        let type6 = type(of: person6)

        // When
        let result1 = TypeGenerator.transformType(type1)
        let result2 = TypeGenerator.transformType(type2)
        let result3 = TypeGenerator.transformType(type3)
        let result4 = TypeGenerator.transformType(type4)
        let result5 = TypeGenerator.transformType(type5)
        let result6 = TypeGenerator.transformType(type6)

        // Then
        XCTAssertEqual(result1, "Person!")
        XCTAssertEqual(result2, "Person")
        XCTAssertEqual(result3, "[Person!]!")
        XCTAssertEqual(result4, "[Person]!")
        XCTAssertEqual(result5, "[Person]")
        XCTAssertEqual(result6, "[Person!]")
    }
}
