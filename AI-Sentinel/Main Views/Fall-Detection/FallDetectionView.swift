import SwiftUI

struct FallDetectionView: View {
    var body: some View {
        ZStack{
            Color("background1")
                .ignoresSafeArea()
            VStack{
                
                Text("Fall Detection")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color("text"))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 18)
                    .padding(.top)
                    .padding(.bottom, 40)
                
                
                Text("Recent Falls")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("text1"))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 18)
                    .padding(.bottom, 12)
                
                
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        RecentFalls(
                            fallDescription: "Fall Detected",
                            fallDate: "Feb 12, 2024",
                            textColor: .black,
                            backgroundColor: Color("secondary1"),
                            imageColor: .red
                        )
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 15)
                        .padding(.bottom, 8)
                        
                        RecentFalls(
                            fallDescription: "Fall Detected",
                            fallDate: "Feb 10, 2024",
                            textColor: .black,
                            backgroundColor: Color("secondary1"),
                            imageColor: .yellow

                        )
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 10)
                        .padding(.bottom, 8)
                    }
                }
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        RecentFalls(
                            fallDescription: "Fall Detected",
                            fallDate: "Jan 7, 2024",
                            textColor: .black,
                            backgroundColor: Color("secondary1"),
                            imageColor: .yellow
                        )
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 15)
                        .padding(.bottom, 8)
                        
                        RecentFalls(
                            fallDescription: "Fall Detected",
                            fallDate: "Jan 6, 2024",
                            textColor: .black,
                            backgroundColor: Color("secondary1"),
                            imageColor: .yellow
                        )
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 10)
                        .padding(.bottom, 8)
                    }
                }
                
                
                
                
                
                Spacer()
                
                Text("Nearby Contacts")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("text"))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 18)
                    .padding(.bottom, 12)
                
                
                
                
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        ConnectedDeviceView(deviceName: "Father", isConnected: true,
                                            icon: Image(systemName: "person.fill"), battery: "2")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 15)
                        .padding(.bottom, 8)
                        ConnectedDeviceView(deviceName: "Brother", isConnected: false,
                                            icon: Image(systemName: "person.slash.fill"), battery: "100")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 10)
                        .padding(.bottom, 8)
                    }
                }
                
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        ConnectedDeviceView(deviceName: "Ahmad", isConnected: false,
                                            icon: Image(systemName: "person.slash.fill"), battery: "N/A ")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 15)
                        .padding(.bottom, 8)
                    }
                }
                
                
                Spacer()
            }
        }
    }
}

struct FallDetectionView_Previews: PreviewProvider {
    static var previews: some View {
        FallDetectionView()
    }
}
