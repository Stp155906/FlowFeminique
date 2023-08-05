import SwiftUI
import SwiftData

struct DashboardView: View {

    // Sample data for the purpose of this mock-up
    var todaysForecast: String = "Today, you might feel an increased urge to be with others and to socialize. This is a great day to make plans, engage in discussions, and connect with others."
    var recommendedRitual: String = "Candle Work: Light a blue candle today to soothe and calm your energies."
    var upcomingEvents: [String] = ["Full Moon in 3 days", "Mercury Retrograde starts next week"]
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                
                // Today's Zodiac Forecast
                VStack(alignment: .leading, spacing: 10) {
                    Text("Today's Forecast")
                        .font(.headline)
                    Text(todaysForecast)
                        .padding()
                        .background(Color.secondary.opacity(0.1))
                        .cornerRadius(10)
                }
                .padding(.horizontal)
                
                // Today's Recommended Ritual
                VStack(alignment: .leading, spacing: 10) {
                    Text("Recommended Ritual")
                        .font(.headline)
                    Text(recommendedRitual)
                        .padding()
                        .background(Color.secondary.opacity(0.1))
                        .cornerRadius(10)
                }
                .padding(.horizontal)
                
                // Upcoming Events
                VStack(alignment: .leading, spacing: 10) {
                    Text("Upcoming Events")
                        .font(.headline)
                    ForEach(upcomingEvents, id: \.self) { event in
                        Text(event)
                            .padding(.horizontal)
                            .padding(.vertical, 5)
                            .background(Color.blue.opacity(0.1))
                            .cornerRadius(10)
                    }
                }
                .padding(.horizontal)
                
                // Profile Shortcut
                NavigationLink(destination: UserProfileView()) {
                    Text("Go to Profile")
                        .font(.headline)
                        .padding(.vertical, 10)
                        .padding(.horizontal, 30)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.top, 20)
            }
        }
        .navigationTitle("Dashboard")
        
        
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DashboardView()
        }
    }
}
