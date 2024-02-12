import SwiftUI

struct RecentFalls: View {
    var fallDescription: String
    var fallDate: String
    var textColor: Color
    var backgroundColor: Color
    var imageColor: Color

    var body: some View {
        HStack {
            // Fall Icon
            Image(systemName: "exclamationmark.triangle.fill")
                .foregroundColor(imageColor)
                .padding(8)

            // Fall Info
            VStack(alignment: .leading) {
                // Fall Description
                Text(fallDescription)
                    .font(.headline)
                    .foregroundColor(.primary)

                // Fall Date
                Text(fallDate)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            .padding(8)

            Spacer()
        }
        .frame(width: 200, height: 60)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(Color(backgroundColor))
                .shadow(color: Color("secondary1").opacity(0.5), radius: 5, x: 0, y: 4)
        )
    }
}

struct RecentFalls_Previews: PreviewProvider {
    static var previews: some View {
        RecentFalls(
            fallDescription: "Fall Detected",
            fallDate: "Feb 12, 2024",
            textColor: .black,
            backgroundColor: Color("secondary1"),
            imageColor: .red
        )
    }
}
