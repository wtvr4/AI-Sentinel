import SwiftUI

struct Profile: View {
    var body: some View {
        ZStack{
            Color("background")
                .ignoresSafeArea()
            Text("Profile")
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
