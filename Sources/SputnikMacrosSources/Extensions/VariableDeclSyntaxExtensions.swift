import SwiftSyntax

extension VariableDeclSyntax {
    func hasPropertyWrapper() -> Bool {
        attributes.contains { attr in
            guard case let .attribute(attribute) = attr else { return false }
            return attribute.attributeName.as(IdentifierTypeSyntax.self) != nil
        }
    }

    func hasPropertyWrapper(named wrapperName: String) -> Bool {
        attributes.contains { attr in
            guard case let .attribute(attribute) = attr,
                  let identifier = attribute.attributeName.as(IdentifierTypeSyntax.self)
            else {
                return false
            }
            return identifier.name.text == wrapperName
        }
    }

    func getPropertyLabel(labelName: String) -> String? {
        let argument = attributes
            .compactMap { attr -> LabeledExprListSyntax? in
                guard case let .attribute(attribute) = attr else { return nil }
                let argumentList = attribute.arguments?.as(LabeledExprListSyntax.self)
                return argumentList
            }
            .flatMap { $0 }
            .first { $0.label?.text == labelName }

        let stringLiteral = argument?.expression.as(StringLiteralExprSyntax.self)
        let name = stringLiteral?.segments.first?.as(StringSegmentSyntax.self)?.content.text
        return name
    }
}
