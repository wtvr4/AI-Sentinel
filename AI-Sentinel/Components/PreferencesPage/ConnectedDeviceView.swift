import SwiftUI

struct ConnectedDeviceView: View {
    var deviceName: String
    var isConnected: Bool
    var icon: Image
    var battery: String
    
    var body: some View {
        HStack {
            icon
                .resizable()
                .frame(width: 35, height: 35)
                .padding(8)
                .padding(.leading, 3)
            
            // Device Info
            VStack(alignment: .leading) {
                // Device Name
                Text(deviceName)
                    .font(.headline)
                    .foregroundColor(.primary)
                
                // Additional details
                Text("\(battery)km away")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            .padding(5)
            
            // Connection Status
            Spacer()
            Circle()
                .frame(width: 15, height: 15)
                .foregroundColor(isConnected ? .green : .red)
                .padding(.leading, -23)
        }
        .frame(width: 300, height: 100)
        .background(
            RoundedRectangle(cornerRadius: 15)
                .fill(Color("accent1"))
                .shadow(color: Color("secondary1").opacity(0.5), radius: 8, x: 0, y: 4)
        )
    }
}

struct ConnectedDeviceView_Previews: PreviewProvider {
    static var previews: some View {
        ConnectedDeviceView(deviceName: "Mohamed's Apple Watch", isConnected: true, icon: Image(systemName: "person.fill"), battery: "80")
    }
}
