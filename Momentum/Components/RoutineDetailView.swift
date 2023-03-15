//
//  RoutineDetailView.swift
//  Momentum
//
//  Created by Jake Marold on 3/14/23.
//

import SwiftUI
import UIKit

struct RoutineDetailView: View {
    @Binding var routine: Routine
    @EnvironmentObject var dataManager: DataManager

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Description")
                .font(.custom("Poppins-Bold", size: 24))
                .foregroundColor(Color("Secondary"))

            Text(routine.description)
                .momentumStyle()

            Button(action: {
                routine.completed.toggle()
                DataManager.shared.saveRoutines(dataManager.routines)
                if routine.completed {
                    NotificationManager.shared.cancelNotification(for: routine)
                } else {
                    NotificationManager.shared.scheduleNotification(for: routine)
                }
                let generator = UIImpactFeedbackGenerator(style: .medium)
                generator.impactOccurred()
            }) {
                Text("Complete")
                    .momentumStyle()
                    .padding(.horizontal, 40)
                    .padding(.vertical, 12)
                    .background(Color("Primary"))
                    .cornerRadius(8)
            }
        }
        .padding()
        .navigationTitle(routine.name)
    }
}

                       

