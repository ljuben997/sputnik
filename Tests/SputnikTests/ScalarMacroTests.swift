import Foundation
@testable import Sputnik
@testable import SputnikMacros
@testable import SputnikSharedResources
import XCTest

final class ScalarMacroTests: XCTestCase {
    @Scalar(expressibleBy: [.string, .int, .double, .boolean])
    struct IDTest {}
    @Scalar(expressibleBy: [.boolean])
    struct IsHuman {}

    func testDefaultScalars() async {
        // Given
        let id1: IDTest = 123
        let id2: IDTest = "123"
        let id3: IDTest = 123.0
        let id4: IDTest = false
        let isHuman: IsHuman = true

        // Then
        XCTAssertEqual(id1.serializedValue as? Int, 123)
        XCTAssertEqual(id2.serializedValue as? String, "123")
        XCTAssertEqual(id3.serializedValue as? Double, 123.0)
        XCTAssertEqual(id4.serializedValue as? Bool, false)
        XCTAssertEqual(isHuman.serializedValue as? Bool, true)
    }

    func testDateScalar() async {
        // Given
        let dateScalar1: DateScalar = "2025-09-12"
        let dateScalar2: DateScalar = 2020
        let dateScalar3: DateScalar = 2021.12

        // When
        let calendar = Calendar.current
        let date1 = calendar.date(from: DateComponents(year: 2025, month: 9, day: 12, hour: 2))
        let date2 = calendar.date(from: DateComponents(year: 2020, month: 1, day: 1, hour: 0))
        let date3 = calendar.date(from: DateComponents(year: 2021, month: 1, day: 1, hour: 0))

        // Then
        XCTAssertEqual(dateScalar1.value, date1)
        XCTAssertEqual(dateScalar2.value, date2)
        XCTAssertEqual(dateScalar3.value, date3)
        XCTAssertEqual(dateScalar1.serializedValue as? String, "2025-09-12")
        XCTAssertEqual(dateScalar2.serializedValue as? String, "2020-01-01")
        XCTAssertEqual(dateScalar3.serializedValue as? String, "2021-01-01")
    }
}
