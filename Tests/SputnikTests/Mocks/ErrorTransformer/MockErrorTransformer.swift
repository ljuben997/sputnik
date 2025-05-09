import Foundation
@testable import Sputnik

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
