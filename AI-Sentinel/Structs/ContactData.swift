import Foundation
import SwiftUI

struct ContactData: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let textColor: String
    let backgroundColor: String
    let shadowColor: String
    let status: Color
}


