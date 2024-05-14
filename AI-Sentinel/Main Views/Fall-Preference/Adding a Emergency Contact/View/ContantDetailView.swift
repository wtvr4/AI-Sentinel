import SwiftUI

struct ContactDetailView: View {
    @Binding var contact: Contact
    
    var body: some View {
        Form {
            TextField("Name", text: $contact.name)
            TextField("Age", value: $contact.age, formatter: NumberFormatter())
                .foregroundColor(.gray)
            Toggle("Bestfriend?", isOn: $contact.isBestFriend)
        }
        .navigationTitle("Friend Detail")
    }
}

struct ContactDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailView(contact: .constant(Contact(name: "test", age: 99)))
    }
}
