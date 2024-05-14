import SwiftUI

struct ContactRowView: View {
    @Binding var contact: Contact
    
    var body: some View {
        NavigationLink {
            ContactDetailView(contact: $contact)
        } label: {
            HStack {
                Image(systemName: contact.isBestFriend ? "face.smiling.inverse" : "circle")
                    .onTapGesture {
                        contact.isBestFriend.toggle()
                    }
                VStack(alignment: .leading) {
                    Text(contact.name)
                }
            }
        }
    }
}

struct FriendRowView_Previews: PreviewProvider {
    static var previews: some View {
        ContactRowView(contact: .constant(Contact(name: "test", age: 99)))
    }
}
