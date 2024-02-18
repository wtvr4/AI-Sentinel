import SwiftUI
import CoreMotion

struct ContentView: View {
    let motionManager = CMMotionManager()
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
            
            Profile()
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
        }
        //        .onAppear {
        //            // Start fall detection when the view appears
        //            startFallDetection()
        //        }
    }
    
}
    
    
//    func startFallDetection() {
//        if motionManager.isAccelerometerAvailable {
//            motionManager.accelerometerUpdateInterval = 0.01  // Update interval in seconds (higher frequency)
//            motionManager.startAccelerometerUpdates(to: .main) { accelerometerData, error in
//                if let acceleration = accelerometerData?.acceleration {
//                    // Check for fall condition (you can adjust the threshold and conditions as needed)
//                    let magnitude = sqrt(pow(acceleration.x, 2) + pow(acceleration.y, 2) + pow(acceleration.z, 2))
//                    if acceleration.z < -0.7 && magnitude > 1.5 {
//                        // Fall detected, handle the fall event
//                        self.handleFallEvent()
//                    }
//                }
//            }
//        }
//    }
//    
//    func handleFallEvent() {
//        // Fall detected, initiate phone call
//        if let phoneURL = URL(string: "tel://0527714473") {
//            UIApplication.shared.open(phoneURL, options: [:], completionHandler: nil)
//        }
//        
//        // You can also perform additional actions or show an alert here
//        print("Fall Detected. Initiating Phone Call.")
//    }
//}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
