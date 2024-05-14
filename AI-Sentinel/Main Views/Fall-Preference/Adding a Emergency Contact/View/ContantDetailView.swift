import SwiftUI

struct ContactDetailView: View {
    @Binding var contact: Contact
    
    var body: some View {
        Form {
            TextField("Name", text: $contact.name)
            TextField("Number", value: $contact.age, formatter: NumberFormatter())
                .foregroundColor(.gray)
            Toggle("Active Number?", isOn: $contact.isBestFriend)
        }
        .navigationTitle("Contact Detail")
    }
}

struct ContactDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailView(contact: .constant(Contact(name: "test", age: 99)))
    }
}
