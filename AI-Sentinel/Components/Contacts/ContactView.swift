import SwiftUI

struct ContactView: View {
    var name: String
    var textColor: String
    var backgroundColor: String
    var shadowColor: String
    //var status: Color

    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .fill(Color("\(backgroundColor)"))
                .frame(width: 150, height: 60)
                .shadow(color: Color("\(shadowColor)").opacity(0.5), radius: 5, x: 0, y: 4)
            
            HStack(spacing: 5){
                Image(systemName: "person.fill")
                Text("\(name)")
                    .foregroundColor(Color(textColor))
                Circle()
                    .fill(.green)
                   // .fill(Color(status))
                    .shadow(color: Color("\(shadowColor)").opacity(0.5), radius: 5, x: 0, y: 4)
                    .frame(width: 10, height: 10, alignment: .leading)
                    .padding(.leading)

                    
            }
        }
    }
}

struct Previews_ContactView: PreviewProvider {
    static var previews: some View {
        ContactView(name: "Mohamed", textColor: "text1", backgroundColor: "secondary1", shadowColor: "secondary1")
    }
}
