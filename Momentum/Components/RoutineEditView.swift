//
//  RoutineEditView.swift
//  Momentum
//
//  Created by Jake Marold on 3/14/23.
//

import SwiftUI

struct RoutineEditView: View {
    @Environment(\.presentationMode) var presentationMode

    @State private var routineName = ""
    @State private var routineDescription = ""
    @State private var scheduledTime = Date()

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Name")
                .font(.custom("Poppins-Bold", size: 24))
                .foregroundColor(Color("Secondary"))

            TextField("Enter routine name", text: $routineName)
                .padding(.horizontal)
                .padding(.vertical, 12)
                .background(Color("Tertiary"))
                .cornerRadius(8)

            Text("Description")
                .font(.custom("Poppins-Bold", size: 24))
                .foregroundColor(Color("Secondary"))

            TextField("Enter routine description", text: $routineDescription)
                .padding(.horizontal)
                .padding(.vertical, 12)
                .background(Color("Tertiary"))
                .cornerRadius(8)

            Text("Scheduled Time")
                .font(.custom("Poppins-Bold", size: 24))
                .foregroundColor(Color("Secondary"))

            DatePicker("", selection: $scheduledTime, displayedComponents: .hourAndMinute)
                .datePickerStyle(WheelDatePickerStyle())
                .labelsHidden()
                .frame(maxWidth: .infinity)

            Button(action: {
                let routine = Routine(name: routineName, description: routineDescription, scheduledTime: scheduledTime, completed: false)
                var routines = DataManager.shared.loadRoutines()
                routines.append(routine)
                DataManager.shared.saveRoutines(routines)
                NotificationManager.shared.scheduleNotification(for: routine)
                presentationMode.wrappedValue.dismiss()
            }) {
                Text("Save")
                    .momentumStyle()
                    .padding(.horizontal, 40)
                    .padding(.vertical, 12)
                    .background(Color("Primary"))
                    .cornerRadius(8)
            }
        }
        .padding()
        .navigationTitle("New Routine")
    }
}


