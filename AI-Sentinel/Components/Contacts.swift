import SwiftUI

struct Contacts: View {
    var text: String
    var textColor: Color
    var backgroundColor: String
    var shadowColor: String

    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .fill(Color("\(backgroundColor)"))
                .frame(width: 150, height: 60)
                .shadow(color: Color("\(shadowColor)").opacity(0.5), radius: 5, x: 0, y: 4)
            
            HStack(spacing: 5){
                Image(systemName: "person.fill")
                Text("Person")
            }
        }
    }
}

struct Previews_Contacts: PreviewProvider {
    static var previews: some View {
        Contacts(text: "Hello, World!", textColor: .black, backgroundColor: "primary", shadowColor: "secondary")
    }
}
