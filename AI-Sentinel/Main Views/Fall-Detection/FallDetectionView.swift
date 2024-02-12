import SwiftUI

struct FallDetectionView: View {
    var body: some View {
        ZStack{
            Color("background")
                .ignoresSafeArea()
            VStack{
                
                Text("Fall Detection")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color("text"))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 18)
                    .padding(.top)
                    .padding(.bottom, 20)
                
                
                Text("Recent Falls")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("text"))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 18)
                    .padding(.bottom, 12)
                
                
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        RecentFalls(text: "hu", textColor: .black, backgroundColor: .white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 15)
                            .padding(.bottom, 8)
                        
                        RecentFalls(text: "hu", textColor: .black, backgroundColor: .white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 15)
                            .padding(.bottom, 8)
                    }
                }
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        RecentFalls(text: "hu", textColor: .black, backgroundColor: .white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 15)
                            .padding(.bottom, 8)
                        
                        RecentFalls(text: "hu", textColor: .black, backgroundColor: .white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 15)
                            .padding(.bottom, 8)
                    }
                }
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        RecentFalls(text: "hu", textColor: .black, backgroundColor: .white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 15)
                            .padding(.bottom, 8)
                        
                        RecentFalls(text: "hu", textColor: .black, backgroundColor: .white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 15)
                            .padding(.bottom, 8)
                    }
                }
                
                
                
                Spacer()
                
                Text("Connected Devices")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("text"))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 18)
                    .padding(.bottom, 12)
                
                
                
                
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        ConnectedDeviceView(deviceName: "Mohamed's Apple Watch", isConnected: true,
                                            icon: Image(systemName: "applewatch"), battery: "80")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 15)
                        .padding(.bottom, 8)
                        ConnectedDeviceView(deviceName: "Rashid's Apple Watch", isConnected: false,
                                            icon: Image(systemName: "applewatch.slash"), battery: "10%")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 10)
                        .padding(.bottom, 8)
                    }
                }
                
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        ConnectedDeviceView(deviceName: "Saif's Apple Watch", isConnected: false,
                                            icon: Image(systemName: "applewatch.slash"), battery: "0")
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
