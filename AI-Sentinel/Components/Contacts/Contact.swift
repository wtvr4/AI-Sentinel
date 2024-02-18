import Foundation

struct Contact: Identifiable, Codable, Hashable {
    let id = UUID()
    var name: String
    var textColor: String
    var backgroundColor: String
    var shadowColor: String
    // var image: String
}


