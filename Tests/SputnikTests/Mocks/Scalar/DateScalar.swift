import Foundation
@testable import SputnikMacros

@Scalar(expressibleBy: [.string, .int, .double], valueType: Date.self, transformer: DateScalarTransformer.self)
struct DateScalar {}

extension DateScalar: Equatable {
    static func == (lhs: DateScalar, rhs: DateScalar) -> Bool {
        return lhs.value == rhs.value
    }
}
