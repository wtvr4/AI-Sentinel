import SwiftUI

struct NewContactView: View {
    @State private var friendName = ""
    @State private var friendAge = ""
    @State private var isBestFriend = false
    @Binding var sourceArray: [Contact]
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Form {
            Section("Info") {
                TextField("Name", text: $friendName)
                TextField("Number", text: $friendAge)
                Toggle("Main Contact?", isOn: $isBestFriend)
                    
            }
            Section("Actions") {
                Button("Save") {
                    if let age = Int(friendAge) {
                        let contact = Contact(name: friendName, age: age)
                        sourceArray.append(contact)
                        dismiss()
                    }
                }
                Button("Cancel", role: .destructive) {
                    dismiss()
                }
            }
        }
    }
}

struct NewContactView_Previews: PreviewProvider {
    static var previews: some View {
        NewContactView(sourceArray: .constant([]))
    }
}
