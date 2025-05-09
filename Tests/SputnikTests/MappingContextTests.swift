@testable import Sputnik
import XCTest

final class MappingContextTests: XCTestCase {
    func testInit() {
        // Given
        let operation1 = MockGraphQLOperation(__variableMappingType: .automatic)
        let operation2 = MockGraphQLOperation(__variableMappingType: .manual)

        // When
        let context1 = MappingContext(operation: operation1)
        let context2 = MappingContext(operation: operation2)

        // Then
        XCTAssert(context1.variablesBuilder is AutomaticVariablesBuilder)
        XCTAssert(context1.argumentsBuilder is AutomaticArgumentsBuilder)
        XCTAssert(context2.variablesBuilder is ManualVariablesBuilder)
        XCTAssert(context2.argumentsBuilder is ManualArgumentsBuilder)
    }
}
