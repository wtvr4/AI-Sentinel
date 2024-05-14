import SwiftUI

struct BestContactView: View {
    @ObservedObject var contactManager: ContactManager
    var body: some View {
        VStack{
            Text("You have")
                .font(.largeTitle)
            Text("\(contactManager.numFriendsDone)")
                .font(.system(size:140))
                .foregroundColor(.yellow)
                .padding()
            Text("Bestfriends")
                .font(.largeTitle)
            
        }
    }
}

struct BestContactView_Previews: PreviewProvider {
    static var previews: some View {
        BestContactView(contactManager: ContactManager())
    }
}
