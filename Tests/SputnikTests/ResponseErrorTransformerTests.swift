@testable import Sputnik
import XCTest

final class ResponseErrorTransformerTests: XCTestCase {
    enum Constants {
        nonisolated(unsafe) static let customErrors: [Any] = [
            [
                "customMessage": "Expected type String, found 12.",
                "customLocations": [
                    [
                        "customLine": 2,
                        "customColumn": 29,
                    ],
                ],
                "customExtensions": [
                    "customCode": "GRAPHQL_VALIDATION_FAILED",
                    "customAdditionalInfo": "Error found during validations",
                ],
            ],
        ]

        nonisolated(unsafe) static let defaultErrors: [Any] = [
            [
                "message": "Expected type String, found 12.",
                "locations": [
                    [
                        "line": 2,
                        "column": 29,
                    ],
                ],
                "path": [
                    12, "pathing", 25,
                ],
                "extensions": [
                    "code": "GRAPHQL_VALIDATION_FAILED",
                ],
            ],
            [
                "message": "Expected type Int, found \"Rick Sanchez\".",
                "locations": [
                    [
                        "line": 2,
                        "column": 58,
                    ],
                ],
                "extensions": [
                    "code": "GRAPHQL_TYPE_VALIDATION_FAILED",
                ],
            ],
        ]
    }

    func testDefaultTransformErrors() async throws {
        let partialErrors = try DefaultResponseErrorTransformer<DefaultPartialError>.transformErrors(errors: Constants.defaultErrors)
        XCTAssertEqual(partialErrors[0].message, "Expected type String, found 12.")
        XCTAssertEqual(partialErrors[0].locations?[0].line, 2)
        XCTAssertEqual(partialErrors[0].locations?[0].column, 29)
        XCTAssertEqual(partialErrors[0].extensions?.code, "GRAPHQL_VALIDATION_FAILED")
        XCTAssertEqual(partialErrors[0].path?[0].value, "12")
        XCTAssertEqual(partialErrors[0].path?[1].value, "pathing")
        XCTAssertEqual(partialErrors[0].path?[2].value, "25")
        XCTAssertEqual(partialErrors[1].message, "Expected type Int, found \"Rick Sanchez\".")
        XCTAssertEqual(partialErrors[1].locations?[0].line, 2)
        XCTAssertEqual(partialErrors[1].locations?[0].column, 58)
        XCTAssertEqual(partialErrors[1].extensions?.code, "GRAPHQL_TYPE_VALIDATION_FAILED")
        XCTAssertNil(partialErrors[1].path)
    }

    func testDefaultTransform() async throws {
        let error = try DefaultResponseErrorTransformer<DefaultPartialError>.transform(errors: Constants.defaultErrors)
        guard case let SputnikError.responseError(errors) = error, let partialErrors = errors as? [DefaultPartialError] else {
            XCTFail()
            return
        }
        XCTAssertEqual(partialErrors[0].message, "Expected type String, found 12.")
        XCTAssertEqual(partialErrors[0].locations?[0].line, 2)
        XCTAssertEqual(partialErrors[0].locations?[0].column, 29)
        XCTAssertEqual(partialErrors[0].extensions?.code, "GRAPHQL_VALIDATION_FAILED")
        XCTAssertEqual(partialErrors[0].path?[0].value, "12")
        XCTAssertEqual(partialErrors[0].path?[1].value, "pathing")
        XCTAssertEqual(partialErrors[0].path?[2].value, "25")
        XCTAssertEqual(partialErrors[1].message, "Expected type Int, found \"Rick Sanchez\".")
        XCTAssertEqual(partialErrors[1].locations?[0].line, 2)
        XCTAssertEqual(partialErrors[1].locations?[0].column, 58)
        XCTAssertEqual(partialErrors[1].extensions?.code, "GRAPHQL_TYPE_VALIDATION_FAILED")
        XCTAssertNil(partialErrors[1].path)
    }

    func testDefaultTransformCustomErrors() async throws {
        let partialErrors = try DefaultResponseErrorTransformer<MockParitalError>.transformErrors(errors: Constants.customErrors)
        XCTAssertEqual(partialErrors[0].customMessage, "Expected type String, found 12.")
        XCTAssertEqual(partialErrors[0].customLocations[0].customLine, 2)
        XCTAssertEqual(partialErrors[0].customLocations[0].customColumn, 29)
        XCTAssertEqual(partialErrors[0].customExtensions?.customCode, "GRAPHQL_VALIDATION_FAILED")
        XCTAssertEqual(partialErrors[0].customExtensions?.customAdditionalInfo, "Error found during validations")
    }

    func testDefaultTransformCustomError() async throws {
        let error = try DefaultResponseErrorTransformer<MockParitalError>.transform(errors: Constants.customErrors)
        guard case let SputnikError.responseError(errors) = error, let partialErrors = errors as? [MockParitalError] else {
            XCTFail()
            return
        }
        XCTAssertEqual(partialErrors[0].customMessage, "Expected type String, found 12.")
        XCTAssertEqual(partialErrors[0].customLocations[0].customLine, 2)
        XCTAssertEqual(partialErrors[0].customLocations[0].customColumn, 29)
        XCTAssertEqual(partialErrors[0].customExtensions?.customCode, "GRAPHQL_VALIDATION_FAILED")
        XCTAssertEqual(partialErrors[0].customExtensions?.customAdditionalInfo, "Error found during validations")
    }

    func testCustomTransformCustomError() async throws {
        let error = try MockErrorTransformer.transform(errors: Constants.customErrors)
        guard case let CustomError.customResponse(partialErrors) = error else {
            XCTFail()
            return
        }
        XCTAssertEqual(partialErrors[0].customMessage, "Expected type String, found 12.")
        XCTAssertEqual(partialErrors[0].customLocations[0].customLine, 2)
        XCTAssertEqual(partialErrors[0].customLocations[0].customColumn, 29)
        XCTAssertEqual(partialErrors[0].customExtensions?.customCode, "GRAPHQL_VALIDATION_FAILED")
        XCTAssertEqual(partialErrors[0].customExtensions?.customAdditionalInfo, "Error found during validations")
    }

    func testCustomTransformCustomErrors() async throws {
        let partialErrors = try MockErrorTransformer.transformErrors(errors: Constants.customErrors)
        XCTAssertEqual(partialErrors[0].customMessage, "Expected type String, found 12.")
        XCTAssertEqual(partialErrors[0].customLocations[0].customLine, 2)
        XCTAssertEqual(partialErrors[0].customLocations[0].customColumn, 29)
        XCTAssertEqual(partialErrors[0].customExtensions?.customCode, "GRAPHQL_VALIDATION_FAILED")
        XCTAssertEqual(partialErrors[0].customExtensions?.customAdditionalInfo, "Error found during validations")
    }
}
