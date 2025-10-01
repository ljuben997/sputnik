protocol ArgumentsBuilder {
    func buildArguments(forMirrorChildren children: Mirror.Children) throws -> [ArgumentNode]
}
