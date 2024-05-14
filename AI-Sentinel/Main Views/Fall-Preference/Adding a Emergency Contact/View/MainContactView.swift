import SwiftUI

struct MainContactListView: View {
    @State private var showAddSheet = false
    @State private var showConfirmAlert = false
    @ObservedObject var contactManager: ContactManager
    
    var body: some View {
        ZStack {
            Color("background")
            VStack {
                Text("Emergency Preferences")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                   // .background(Color("background1")) // Set background color if needed
                
                NavigationStack {
                    List($contactManager.contacts, editActions: [.all]) { $contact in
                        ContactRowView(contact: $contact)
                    }
                    .toolbar {
                        ToolbarItem(placement: .navigationBarLeading) {
                            EditButton()
                        }
                        ToolbarItemGroup(placement: .navigationBarTrailing){
                            #if DEBUG
                            Button {
                                showAddSheet = true
                            } label: {
                                Image(systemName: "plus")
                            }
                            #endif
                            
                            Menu {
                                Text("Sort By...")
                                Button("Name", action: sortByName)
                                Button("Preference", action: sortByBest)
                                
                            } label: {
                                Image(systemName: "ellipsis.circle")
                            }
                        }
                    }
                    .sheet(isPresented: $showAddSheet){
                        NewContactView(sourceArray: $contactManager.contacts)
                    }
                    .alert("Load sample data? Warning: This cannot be undone!", isPresented: $showConfirmAlert) {
                        Button("Replace", role: .destructive) {
                            contactManager.loadSampleData()
                        }
                    }
                }
            }
            
            VStack{
                HStack{
                    Text("Call Preferences")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("text"))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 5)
                        .padding(.bottom, 12)
                    
                    Button{
                        // does nothing for now
                    } label: {
                        Text("Edit")
                            .padding(.trailing, 25)
                            .padding(.bottom, 8)
                            .foregroundColor(.blue)
                    }
                }
                
                PreferencesView(text: "Call Ambulance   ", status: .green, shapeColor: "accent1")
                    .padding(.bottom, 10)
                PreferencesView(text: "Call Main Contact", status: .green, shapeColor: "accent1")
                    .padding(.bottom, 10)
                PreferencesView(text: "Call Police              ", status: .red, shapeColor: "accent1")
                    .padding(.bottom, -10)
            }
            
        }
    }
    
    func sortByName() {
        contactManager.contacts.sort { $0.name.lowercased() <  $1.name.lowercased() }
    }
    
    func sortByBest() {
        contactManager.contacts.sort { ($0.isBestFriend ? 0 : 1 ) < ($1.isBestFriend ? 0 : 1 ) }
    }
}

struct MainFriendListView_Previews: PreviewProvider {
    static var previews: some View {
        MainContactListView(contactManager: ContactManager())
    }
}
