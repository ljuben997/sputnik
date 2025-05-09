import Foundation
import Sputnik
import SputnikMacros
import SputnikSharedResources

public struct IDRepresentable: Equatable {
    let value: Int

    public static func == (lhs: IDRepresentable, rhs: IDRepresentable) -> Bool {
        return lhs.value == rhs.value
    }
}

@Scalar(expressibleBy: [.int, .string],
        valueType: IDRepresentable.self,
        transformer: ScalarIDTransformer.self)
public struct ID {}

extension ID: Equatable {
    public static func == (lhs: ID, rhs: ID) -> Bool {
        return lhs.value == rhs.value
    }
}
