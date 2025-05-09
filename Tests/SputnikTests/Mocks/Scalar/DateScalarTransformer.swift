import Foundation
@testable import SputnikSharedResources

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
