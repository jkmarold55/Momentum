//
//  MomentumApp.swift
//  Momentum
//
//  Created by Jake Marold on 3/14/23.
//

import SwiftUI

@main
struct MomentumApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
