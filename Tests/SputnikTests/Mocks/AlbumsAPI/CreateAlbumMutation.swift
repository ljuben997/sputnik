@testable import SputnikMacros

@QueryMutation(name: "CreateAlbum")
struct CreateAlbumMutation {
    @Property(name: "createAlbum")
    var album: Album

    @QuerySatelite
    struct Album {
        @Variable var input: CreateAlbumInput
        var title: String
    }
}

@QuerySatelite
struct CreateAlbumInput {
    var title: String
    var userId: String
}
