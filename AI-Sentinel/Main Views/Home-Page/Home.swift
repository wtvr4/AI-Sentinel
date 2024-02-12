import SwiftUI
import Foundation
struct Home: View {
    var body: some View {
        ZStack {
            Color("background")
                .ignoresSafeArea()
            
            VStack(spacing: 3) {
                Text("Hello, Mohamed")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color("text"))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 5)
                    .padding(.top)
                    .padding(.bottom, -19)
                
                Text("Welcome to AI Sentinel")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("text"))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 15)
                    .padding(.top)
                
                
                Spacer()
                
                Text("Recent Falls")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("text"))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 5)
                    .padding(.bottom, 12)
                
                
                
//                ScrollView(.horizontal, showsIndicators: false){
//                    HStack{
//                        RecentFalls(
//                            fallDescription: "Fall Detected",
//                            fallDate: "Feb 12, 2024",
//                            textColor: .black,
//                            backgroundColor: Color("secondary1")
//                        )
//                        .frame(maxWidth: .infinity, alignment: .leading)
//                        .padding(.leading, 15)
//                        .padding(.bottom, 8)
//                        
//                        RecentFalls(
//                            fallDescription: "Fall Detected",
//                            fallDate: "Feb 12, 2024",
//                            textColor: .black,
//                            backgroundColor: Color("secondary1")
//                        )
//                        .frame(maxWidth: .infinity, alignment: .leading)
//                        .padding(.leading, 10)
//                        .padding(.bottom, 8)
//                    }
//                }
                
    
                
                
                
                
                
                Spacer()
            }
            .padding()
        }
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
