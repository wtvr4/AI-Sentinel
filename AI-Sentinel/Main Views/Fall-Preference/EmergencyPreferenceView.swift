import SwiftUI

struct EmergencyPreferenceView: View {
    var body: some View {
        ZStack{
            Color("background")
                .ignoresSafeArea()
             Text("Preferences")
        }
    }
}

struct EmergencyPreferenceView_Previews: PreviewProvider {
    static var previews: some View {
        EmergencyPreferenceView()
    }
}
