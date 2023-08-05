//
//  ContentView.swift
//  SynergeticRituals
//
//  Created by Shantalia Z on 8/4/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            InputView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }

            UserProfileView() // You'll define this view next.
                .tabItem {
                    Label("Profile", systemImage: "person.circle")
                }

            DashboardView() // And this one after.
                .tabItem {
                    Label("Dashboard", systemImage: "chart.pie")
                }

            SettingsView() // And this one lastly.
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}


#Preview {
    ContentView()
}
