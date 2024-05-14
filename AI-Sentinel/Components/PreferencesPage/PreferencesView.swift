import SwiftUI

struct PreferencesView: View {
    var text: String
    var status: Color
    var shapeColor: String
    var body: some View {
        ZStack() {
            RoundedRectangle(cornerRadius: 8)
                .fill(Color(shapeColor))
                .frame(width: 350, height: 35)
            HStack{
                Spacer()
                Text(text)
                    .foregroundColor(Color("text1"))
                    .fontWeight(.medium)
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Circle()
                    .fill(status)
                    .frame(width: 15, height: 15)
                    
                Spacer()
            }
        }
    }
}
struct PreferencesView_Previews: PreviewProvider {
    static var previews: some View {
        PreferencesView(text: "Call Police", status: .red, shapeColor: "accent1")
    }
}
