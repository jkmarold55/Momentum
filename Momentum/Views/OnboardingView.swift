//
//  OnboardingView.swift
//  Momentum
//
//  Created by Jake Marold on 3/14/23.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        VStack {
            Text("Welcome to Momentum!")
                .font(.custom("Poppins-Bold", size: 24))
                .foregroundColor(Color("Secondary"))
                .padding()

            Text("Plan and track your daily routines with ease.")
                .momentumStyle()
                .multilineTextAlignment(.center)
                .padding()

            Button(action: {
                // Navigate to DashboardView
            }) {
                Text("Get Started")
                    .momentumStyle()
                    .padding(.horizontal, 40)
                    .padding(.vertical, 12)
                    .background(Color("Primary"))
                    .cornerRadius(8)
            }
        }
    }
}
