enum AlbumMutationMocks {
    enum CreateAlbumMutationMain {
        private static let input = CreateAlbumInput(title: "Album Title", userId: "234")
        private static let variables = CreateAlbumMutation.Variables(input: input)
        nonisolated(unsafe) static let mutation = CreateAlbumMutation(variables: variables)
    }
}
