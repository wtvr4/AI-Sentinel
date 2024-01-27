import SwiftUI

struct RecentFalls: View {
    var text: String
    var textColor: Color
    var backgroundColor: Color

    var body: some View {
        Text(text)
            .padding()
            .frame(width: 250, height: 60) // Adjust the width as needed
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(backgroundColor)
                    .shadow(color: Color.gray.opacity(0.5), radius: 5, x: 0, y: 4)
            )
            .foregroundColor(textColor)
    }
}

struct Previews_RoundedShadowBox: PreviewProvider {
    static var previews: some View {
        RecentFalls(text: "Hello, World!", textColor: .black, backgroundColor: .white)
    }
}
