import SputnikMacros

@QueryEnum
enum Status: String {
    case unknown
    case alive = "Alive"
    case dead = "Dead"
}
