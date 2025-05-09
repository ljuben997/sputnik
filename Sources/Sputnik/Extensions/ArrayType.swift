protocol ArrayType {
    associatedtype Element
    static var elementType: Element.Type { get }
}

extension Array: ArrayType {
    static var elementType: Element.Type { Element.self }
}
