import SwiftUI

struct Home: View {
    var body: some View {
        ZStack {
            Color("background")
                .ignoresSafeArea()
            
            VStack(spacing: 3) {
                Text("Hello, Mohamed")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .offset(x: -96, y: 23)
                Text("Welcome to AI Sentinel")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                    .offset(x: -65, y: 23)
                Spacer()
                
                Text("Recent Updates")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                
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
