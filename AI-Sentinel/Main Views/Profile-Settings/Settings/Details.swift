import SwiftUI

struct Details: View {
    @State private var username = ""
    @State private var userID = ""
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    @State private var password = ""
    @State private var isEditing = false

    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section(header: Text("Account Information")) {
                        TextField("Username", text: $username).disabled(!isEditing)
                        TextField("User ID", text: $userID).disabled(!isEditing)
                    }
                    
                    Section(header: Text("Personal Details")) {
                        TextField("First Name", text: $firstName).disabled(!isEditing)
                        TextField("Last Name", text: $lastName).disabled(!isEditing)
                    }
                    
                    Section(header: Text("Privacy")) {
                        TextField("Email", text: $email)
                            .disabled(true)
                        if isEditing {
                            SecureField("Password", text: $password)
                        }
                    }
                    
                    if isEditing {
                        Button(action: {
                            // Save action
                            isEditing.toggle()
                        }) {
                            Text("Save")
                        }
                    }
                }
                
                Spacer()
            }
            .navigationBarItems(trailing:
                Button(action: {
                    isEditing.toggle()
                }) {
                    Text(isEditing ? "Done" : "Edit")
                        .foregroundColor(.blue)
                }
            )
        }
    }
}

struct Details_Previews: PreviewProvider {
    static var previews: some View {
        Details()
    }
}
