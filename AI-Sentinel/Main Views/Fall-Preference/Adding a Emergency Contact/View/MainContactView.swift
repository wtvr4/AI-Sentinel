import SwiftUI

struct MainContactListView: View {
    @State private var showAddSheet = false
    @State private var showConfirmAlert = false
    @ObservedObject var contactManager: ContactManager
    
    @State private var ambulanceColor: Color = .green
    @State private var ambulanceState: Bool = true
    @State private var mainContactColor: Color = .green
    @State private var mainContactState: Bool = true

    @State private var policeColor: Color = .red
    @State private var policeState: Bool = false

    
    @State private var constantGreen: Color = .green
    @State private var constantRed: Color = .red
    
    @State private var editState: Bool = false
    @State private var editName: String = "Edit"

    var body: some View {
        ZStack {
            Color("tempback")
            VStack {
                Text("Emergency Preferences")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
               .background(Color("tempback")) 
                
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
                Spacer()
                HStack{
                    Spacer()
                    Text("Call Preferences")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("text"))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 5)
                        .padding(.bottom, 12)
                    
                    Button{
                        if editState == false {
                            editState = true
                            editName = "Done"
                        } else {
                            editState = false
                            editName = "Edit"
                        }
                    } label: {
                        Text("\(editName)")
                            .padding(.trailing, 25)
                            .padding(.bottom, 8)
                            .foregroundColor(.blue)
                    }
                }
                
                
                Button{
                    if ambulanceState == true && editState == true {
                        ambulanceColor = .red
                        ambulanceState = false
                    } else if ambulanceState == false && editState == true {
                        ambulanceColor = .green
                        ambulanceState = true
                    }
                } label: {
                    PreferencesView(text: "Call Ambulance", status: ambulanceColor, shapeColor: "accent1")
                        .padding(.bottom, 10)
                }
                
                Button{
                    if mainContactState == true && editState == true {
                        mainContactColor = .red
                        mainContactState = false
                    } else if mainContactState == false && editState == true {
                        mainContactColor = .green
                        mainContactState = true
                    }
                } label: {
                    PreferencesView(text: "Call Main Contact", status: mainContactColor, shapeColor: "accent1")
                        .padding(.bottom, 10)
                }
                
                Button{
                    if policeState == true && editState == true {
                        policeColor = .red
                        policeState = false
                    } else if policeState == false && editState == true {
                        policeColor = .green
                        policeState = true
                    }
                } label: {
                    PreferencesView(text: "Call Police", status: policeColor, shapeColor: "accent1")
                        .padding(.bottom, -10)
                }
                
                Spacer()
                
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
