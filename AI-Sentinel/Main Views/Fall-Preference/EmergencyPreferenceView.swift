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
                
                Text("Emergency Contacts")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("text"))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 5)
                    .padding(.bottom, 12)
                
                
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        Contacts(text: "hu", textColor: .black, backgroundColor: "primary", shadowColor: "secondary")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 15)
                            .padding(.bottom, 8)
                        
                        Contacts(text: "hu", textColor: .black, backgroundColor: "primary", shadowColor: "secondary")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 15)
                            .padding(.bottom, 8)
                    }
                }
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        Contacts(text: "hu", textColor: .black, backgroundColor: "primary", shadowColor: "secondary")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 15)
                            .padding(.bottom, 8)
                        
                        Contacts(text: "hu", textColor: .black, backgroundColor: "primary", shadowColor: "secondary")
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
