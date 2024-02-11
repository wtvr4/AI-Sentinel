import SwiftUI

struct SectionRowView: View {
    let imageName: String
    let imageColor: String
    let title: String
    let titleColor: String
    var body: some View {
        HStack(spacing : 12){
            Image(systemName: imageName)
                .imageScale(.small)
                .font(.title)
                .foregroundColor(Color(imageColor))
            
            Text(title)
                .font(.subheadline)
             //   .fontWeight(.bold)
                .foregroundColor(Color(titleColor))
        }
    }
}

struct SectionRowView_Previews: PreviewProvider {
    static var previews: some View {
        SectionRowView(imageName: "gear", imageColor: "accent", title: "Version", titleColor: "text")}
}
