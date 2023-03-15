//
//  MomentumApp.swift
//  Momentum
//
//  Created by Jake Marold on 3/14/23.
//

import SwiftUI
import UserNotifications

@main
struct MomentumApp: App {
    @StateObject private var dataManager = DataManager.shared

    init() {
        setupAppearance()
        requestNotificationPermission()
    }

    var body: some Scene {
        WindowGroup {
            DashboardView()
                .environmentObject(dataManager)
        }
    }

    private func setupAppearance() {
        let coloredAppearance = UINavigationBarAppearance()
        coloredAppearance.configureWithOpaqueBackground()
        coloredAppearance.backgroundColor = UIColor(named: "Primary")
        
        if let titleFont = UIFont(name: "Poppins-Bold", size: 20),
           let titleColor = UIColor(named: "Secondary") {
            coloredAppearance.titleTextAttributes = [.font: titleFont, .foregroundColor: titleColor]
        }
        
        if let largeTitleFont = UIFont(name: "Poppins-Bold", size: 36),
           let largeTitleColor = UIColor(named: "Secondary") {
            coloredAppearance.largeTitleTextAttributes = [.font: largeTitleFont, .foregroundColor: largeTitleColor]
        }

        UINavigationBar.appearance().standardAppearance = coloredAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
    }

    private func requestNotificationPermission() {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { granted, error in
            if let error = error {
                print("Error requesting authorization for notifications: \(error)")
            }
        }
    }
}




