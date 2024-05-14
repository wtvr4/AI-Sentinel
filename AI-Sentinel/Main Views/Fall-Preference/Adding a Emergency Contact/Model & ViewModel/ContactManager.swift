import Foundation
import SwiftUI

class ContactManager: ObservableObject {
    @Published var contacts: [Contact] = [] {
        didSet {
            save()
        }
    }
    
    @Published var serchTerms = ""
    
    var todosFiltered: Binding<[Contact]> {
        Binding (
            get: {
                if self.serchTerms == "" {return self.contacts}
                return self.contacts.filter {
                    $0.name.lowercased().contains(self.serchTerms.lowercased())
                }
            },
            set:{
                self.contacts = $0
            }
        )
        
    }
    var numFriendsLeft : Int { contacts.filter { !$0.isBestFriend }.count }
    var numFriendsDone : Int { contacts.filter { $0.isBestFriend }.count }

    init() {
        load()
    }
    
    func getArchiveURL() -> URL {
        let plistName = "friends.plist"
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        
        return documentsDirectory.appendingPathComponent(plistName)
    }
    
    func save() {
        let archiveURL = getArchiveURL()
        let propertyListEncoder = PropertyListEncoder()
        let encodedFriends = try? propertyListEncoder.encode(contacts)
        try? encodedFriends?.write(to: archiveURL, options: .noFileProtection)
    }
   
    func loadSampleData() {
        let contact1 = Contact(name: "Saif", age: 16, isBestFriend: true)
        let contact2 = Contact(name: "Rashid", age: 15)
        let contact3 = Contact(name: "Ahmed", age: 17)
        contacts = [contact1, contact2, contact3]
    }
    
    func load() {
        let archiveURL = getArchiveURL()
        print(archiveURL)
        let propertyListDecoder = PropertyListDecoder()
                
        if let retrievedFriendData = try? Data(contentsOf: archiveURL),
            let friendsDecoded = try? propertyListDecoder.decode([Contact].self, from: retrievedFriendData) {
            contacts = friendsDecoded
        }
    }
}
