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
        let contact1 = Contact(name: "Sample1", textColor: "text", backgroundColor: "primary", shadowColor: "secondary")
        let contact2 = Contact(name: "Sample1", textColor: "text", backgroundColor: "primary", shadowColor: "secondary")
        let contact3 = Contact(name: "Sample1", textColor: "text", backgroundColor: "primary", shadowColor: "secondary")
        contacts = [contact1, contact2, contact3]
        
    }
    
    func load() {
        let archiveURL = getArchiveURL()
        print(archiveURL)
        let propertyListDecoder = PropertyListDecoder()
                
        if let retrievedFriendData = try? Data(contentsOf: archiveURL),
            let contactsDecoded = try? propertyListDecoder.decode([Contact].self, from: retrievedFriendData) {
            contacts = contactsDecoded
        }
    }
}
