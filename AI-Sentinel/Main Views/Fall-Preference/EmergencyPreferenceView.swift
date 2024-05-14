import SwiftUI

struct EmergencyPreferenceView: View {
    
//    var contactsData0: [[Contact]] = [
//        [Contact(name: "Ambulance", textColor: "text1", backgroundColor: "secondary1", shadowColor: "accent1")],
//        [Contact(name: "Caretaker", textColor: "text1", backgroundColor: "secondary1", shadowColor: "accent1")],
//        [Contact(name: "Mohamed", textColor: "text1", backgroundColor: "secondary1", shadowColor: "accent1")],
//        [Contact(name: "Brother", textColor: "text1", backgroundColor: "secondary1", shadowColor: "accent1")],
//    ]
    
 
    
    @State private var isAddingContact = false
    
//    init() {
//        self._contactsAmount = State(initialValue: contactsData0.count)
//    }
    
    
    var body: some View {
        ZStack {
            Color("background1")
                .ignoresSafeArea()
            
            VStack(spacing: 3) {
                Text("Emergency Preferences")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color("text"))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 5)
                    .padding(.top)
                    .padding(.bottom, -199)
                
                
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
                        print("contactsAmount")
                    } label: {
                        Image(systemName: "plus.app.fill")
                            .padding(.trailing, 25)
                            .padding(.bottom, 8)
                    }
                    .sheet(isPresented: $isAddingContact){
                        Text("hello from in the form")
                    }
                    
                    
                }
                

                
//                ScrollView(.horizontal, showsIndicators: false) {
//                    HStack(){
//                        
//                        Button {
//                            // Add your action for the button here
//                        } label: {
//                            let contact = contactsData0[0][0] // Accessing the first contact in the first row
//                            ContactView(name: contact.name, textColor: contact.textColor, backgroundColor: contact.backgroundColor, shadowColor: contact.shadowColor, image: "staroflife.fill")
//                                .frame(maxWidth: .infinity, alignment: .leading)
//                                .padding(.leading, 15)
//                                .padding(.bottom, 8)
//                        }
//                        
//                        Button {
//                            // Add your action for the button here
//                        } label: {
//                            let contact = contactsData0[1][0] // Accessing the first contact in the first row
//                            ContactView(name: contact.name, textColor: contact.textColor, backgroundColor: contact.backgroundColor, shadowColor: contact.shadowColor, image: "figure.stand")
//                                .frame(maxWidth: .infinity, alignment: .leading)
//                                .padding(.leading, 15)
//                                .padding(.bottom, 8)
//                        }
//                    }
//                }
//                
//                ScrollView(.horizontal, showsIndicators: false) {
//                    HStack(){
//                        
//                        Button {
//                            // Add your action for the button here
//                        } label: {
//                            let contact = contactsData0[2][0] // Accessing the first contact in the first row
//                            ContactView(name: contact.name, textColor: contact.textColor, backgroundColor: contact.backgroundColor, shadowColor: contact.shadowColor, image: "person.fill")
//                                .frame(maxWidth: .infinity, alignment: .leading)
//                                .padding(.leading, 15)
//                                .padding(.bottom, 8)
//                        }
//                        
//                        Button {
//                            // Add your action for the button here
//                        } label: {
//                            let contact = contactsData0[3][0] // Accessing the first contact in the first row
//                            ContactView(name: contact.name, textColor: contact.textColor, backgroundColor: contact.backgroundColor, shadowColor: contact.shadowColor, image: "person.fill")
//                                .frame(maxWidth: .infinity, alignment: .leading)
//                                .padding(.leading, 15)
//                                .padding(.bottom, 8)
//                        }
//                    }
                }
                
                Spacer()
                
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
                PreferencesView(text: "Call Police              ", status: .red, shapeColor: "accent1")                    .padding(.bottom, -10)
                
                
                
                Spacer()
                Spacer()
            }
            .padding()
            
            
        }
        
    }

//struct EmergencyPreferenceView_Previews: PreviewProvider {
//    static var previews: some View {
//        EmergencyPreferenceView()
//    }
//}


//func AddContact() -> Contact {
//    Form() {
//
//    }
//    return Contact(name: "", textColor: "", backgroundColor: "", shadowColor: "")
//}
