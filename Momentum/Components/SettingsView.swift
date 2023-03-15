//
//  SettingsView.swift
//  Momentum
//
//  Created by Jake Marold on 3/14/23.
//

import SwiftUI

struct SettingsView: View {
    @State private var enableNotifications = true
    @State private var appearanceOption = 0
    let appearanceOptions = ["System Default", "Light Mode", "Dark Mode"]

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Appearance").momentumStyle()) {
                    Picker("Theme", selection: $appearanceOption) {
                        ForEach(0..<appearanceOptions.count) { index in
                            Text(appearanceOptions[index]).tag(index)
                        }
                    }
                }

                Section(header: Text("Notifications").momentumStyle()) {
                    Toggle("Enable Notifications", isOn: $enableNotifications)
                }

                Section(header: Text("Data Management").momentumStyle()) {
                    Button(action: {
                        // Export data
                    }) {
                        Text("Export Data")
                    }

                    Button(action: {
                        // Import data
                    }) {
                        Text("Import Data")
                    }

                    Button(action: {
                        // Sync data
                    }) {
                        Text("Sync Data")
                    }
                }
            }
            .navigationTitle("Settings")
        }
    }
}


                       

