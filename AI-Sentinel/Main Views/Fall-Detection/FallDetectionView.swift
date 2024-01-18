import SwiftUI

struct FallDetectionView: View {
    var body: some View {
        ZStack{
            Color("background")
                .ignoresSafeArea()
            Text("Fall Detection")
        }
    }
}

struct FallDetectionView_Previews: PreviewProvider {
    static var previews: some View {
        FallDetectionView()
    }
}
