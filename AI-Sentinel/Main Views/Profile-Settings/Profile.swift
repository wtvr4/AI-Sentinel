import SwiftUI

struct Profile: View {
    @ObservedObject var contactManager: ContactManager
    @State private var showAddSheet = false
    @State private var showConfirmAlert = false
    
    var body: some View {
        ZStack {
            VStack {
                NavigationStack {
                    List {
                        ForEach(contactManager.todosFiltered.wrappedValue) { friend in
                            ContactView(name: friend.name, textColor: friend.textColor, backgroundColor: friend.backgroundColor, shadowColor: friend.shadowColor)
                        }
                    }
                    .searchable(text: $contactManager.serchTerms) // Fix typo here
                    .navigationTitle("Friends")
                    .toolbar {
                        ToolbarItem(placement: .navigationBarLeading) {
                            EditButton()
                        }
                        ToolbarItemGroup(placement: .navigationBarTrailing) {
                            Button {
                                showConfirmAlert = true
                            } label: {
                                Image(systemName: "list.bullet.clipboard.fill")
                            }

#if DEBUG
                            Button {
                                showAddSheet = true
                            } label: {
                                Image(systemName: "plus")
                            }
#endif
                        }
                    }
                    .alert("Load sample data? Warning: This cannot be undone!", isPresented: $showConfirmAlert) {
                        Button("Replace", role: .destructive) {
                            contactManager.loadSampleData()
                        }
                    }

                }
            }
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile(contactManager: ContactManager())
    }
}

// (No changes in ContactManager and Contact)
