// DetailRow.swift

import SwiftUI

struct DetailRow: View {
    let title: String
    let content: String
    let color: Color
    
    var body: some View {
        HStack {
            Text(title)
                .foregroundColor(Color("text"))
            Spacer()
            Text(content)
                .foregroundColor(color)
        }
    }
}
