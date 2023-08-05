import SwiftUI

struct UserProfileView: View {
    
    // Sample data for demonstration purposes
    var profileImage: Image = Image(systemName: "person.circle.fill")
    var username: String = "Jane Doe"
    var birthday: String = "April 25, 1990"
    
    // State for the chart type toggle
    @State private var chartType: ChartType = .western

    enum ChartType {
        case western, sidereal
    }

    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            // Profile Picture
            profileImage
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.gray, lineWidth: 2))
                .shadow(radius: 5)

            // Name
            Text(username)
                .font(.largeTitle)
                .fontWeight(.bold)

            // Birthday
            HStack {
                Image(systemName: "calendar")
                Text("Birthday: \(birthday)")
            }
            .font(.subheadline)

            // Chart Type Picker
            Picker("Chart Type", selection: $chartType) {
                Text("Western").tag(ChartType.western)
                Text("Sidereal").tag(ChartType.sidereal)
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()

            // Birthchart Display (Placeholder for now)
            VStack {
                Text(chartType == .western ? "Western Birthchart" : "Sidereal Birthchart")
                // Here, you can display the actual birthchart or an image representation
                Rectangle()
                    .frame(width: 200, height: 200)
                    .cornerRadius(10)
                    .overlay(Text("Chart Data").foregroundColor(.white))
            }
            .padding()
            
            // Action Button (Edit Profile for now)
            Button(action: {
                // Action for editing profile
            }) {
                Text("Edit Profile")
                    .font(.headline)
                    .padding(.vertical, 10)
                    .padding(.horizontal, 30)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .padding()
    }
}

struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView()
    }
}
