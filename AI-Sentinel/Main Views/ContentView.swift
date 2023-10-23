import SwiftUI

struct ContentView: View {
    var body: some View {
        
            // creating a tab view to show all pages and allowing navigation between them
            TabView {
                
                Home()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }
                
                Home()
                    .tabItem {
                        Image(systemName: "figure.pilates")
                        Text("Fall Detector")
                    }
                
                Home()
                    .tabItem {
                        Image(systemName: "slider.horizontal.3")
                        Text("Preferences")
                    }
                
                Home()
                    .tabItem {
                        Image(systemName: "gear")
                        Text("Settings")
                    }
                
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
