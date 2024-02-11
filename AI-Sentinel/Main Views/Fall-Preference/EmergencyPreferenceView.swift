import SwiftUI

struct EmergencyPreferenceView: View {
    
    var contactsData: [[Contact]] = [
        [Contact(name: "Mohamed", textColor: "text1", backgroundColor: "secondary1", shadowColor: "accent1")],
        [Contact(name: "Grandpa", textColor: "text1", backgroundColor: "secondary1", shadowColor: "accent1")],
    ]
    
    @State var contactsAmount: Int
    @State private var isAddingContact = false
    
    init() {
        self._contactsAmount = State(initialValue: contactsData.count)
    }
    
    
    var body: some View {
        ZStack {
            Color("background")
                .ignoresSafeArea()
            
            VStack(spacing: 3) {
                Text("Emergency Preferences")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color("text"))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 5)
                    .padding(.top)
                    .padding(.bottom, -19)
                
                
                Spacer()
                HStack{
                    Text("Emergency Contacts")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("text"))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 5)
                        .padding(.bottom, 12)
                    
                    Button{
                        self.isAddingContact.toggle()
                        print(contactsAmount)
                    } label: {
                        Image(systemName: "plus.app.fill")
                            .padding(.trailing, 25)
                            .padding(.bottom, 8)
                    }
                    .sheet(isPresented: $isAddingContact){
                        
                    }
                    
                    
                }
                
                
                ForEach(contactsData, id: \.self) { contactGroup in
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 5) {
                            ForEach(contactGroup, id: \.self) { contact in
                                Button{
                                    // action for button
                                } label: {
                                    ContactView(name: contact.name, textColor: contact.textColor, backgroundColor: contact.backgroundColor, shadowColor: contact.shadowColor)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .padding(.leading, 15)
                                        .padding(.bottom, 8)
                                }
                                
                            }
                        }
                    }
                }
                
                Spacer()
                Spacer()
            }
            .padding()
            
        
        }
        
    }
}

struct EmergencyPreferenceView_Previews: PreviewProvider {
    static var previews: some View {
        EmergencyPreferenceView()
    }
}


//func AddContact() -> Contact {
//    Form() {
//
//    }
//    return Contact(name: "", textColor: "", backgroundColor: "", shadowColor: "")
//}
