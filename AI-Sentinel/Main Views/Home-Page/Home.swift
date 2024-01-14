import SwiftUI

struct Home: View {
    var body: some View {
        ZStack{
            Color("background")
                .ignoresSafeArea()
            Text("Home")
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
