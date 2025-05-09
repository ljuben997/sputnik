@testable import SputnikMacros

@QueryOperation(name: "findByType")
struct AnimeQuery {
    @Property(name: "MediaListCollection")
    var mediaList: MediaListCollection

    @QuerySatelite
    struct MediaListCollection {
        @Variable
        var type: MediaType?
        @Variable
        var userId: Int?
        @Variable
        var status: MediaListStatus?
        var hasNextChunk: Bool
        var lists: [MediaListGroup]

        @QuerySatelite
        struct MediaListGroup {
            var name: String
            var entries: [MediaList]

            @QuerySatelite
            struct MediaList {
                var media: Media
                var status: MediaListStatus

                @QuerySatelite
                struct Media {
                    var description: String
                    var type: MediaType
                }
            }
        }
    }
}

@QueryEnum
enum MediaType: String {
    case anime = "ANIME"
    case manga = "MANGA"
}

@QueryEnum
enum MediaListStatus: String {
    case current = "CURRENT"
    case planning = "PLANNING"
    case completed = "COMPLETED"
    case dropped = "DROPPED"
}
