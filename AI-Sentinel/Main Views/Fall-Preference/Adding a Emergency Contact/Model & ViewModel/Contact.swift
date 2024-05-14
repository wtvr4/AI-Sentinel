import Foundation

struct Contact: Identifiable, Codable {
    let id = UUID()
    var name: String
    var age: Int
    var isBestFriend = false
}
