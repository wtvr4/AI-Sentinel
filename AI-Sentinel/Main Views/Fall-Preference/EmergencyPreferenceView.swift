import SwiftUI

struct EmergencyPreferenceView: View {
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
                        
                    } label: {
                        Image(systemName: "plus.app.fill")
                            .padding(.trailing, 25)
                            .padding(.bottom, 8)
                    }
                    
                    
                }
                
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        Button{
                            
                        } label: {
                            Contacts(name: "Mohamed", textColor: "text", backgroundColor: "primary", shadowColor: "secondary", status: .green)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.leading, 15)
                                .padding(.bottom, 8)
                        }
                        Contacts(name: "Dad", textColor: "text", backgroundColor: "primary", shadowColor: "secondary", status: .red)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 15)
                            .padding(.bottom, 8)
                    }
                }
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        Contacts(name: "Brother", textColor: "text", backgroundColor: "primary", shadowColor: "secondary", status: .red)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 15)
                            .padding(.bottom, 8)
                        
                        Contacts(name: "Uncle", textColor: "text", backgroundColor: "primary", shadowColor: "secondary", status: .yellow)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 15)
                            .padding(.bottom, 8)
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
