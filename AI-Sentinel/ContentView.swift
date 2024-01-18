import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            Home()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            FallDetectionView()
                .tabItem {
                    Label("Detector", systemImage: "eye")
                }
            
            EmergencyPreferenceView()
                .tabItem {
                    Label("Preference", systemImage: "exclamationmark.triangle")
                }
            
            EmergencyPreferenceView()
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
        }
           
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
