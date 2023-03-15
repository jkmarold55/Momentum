//
//  RoutineCardView.swift
//  Momentum
//
//  Created by Jake Marold on 3/14/23.
//

import SwiftUI

struct RoutineCardView: View {
    var routine: Routine

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(routine.name)
                .font(.custom("Poppins-Bold", size: 24))
                .fontWeight(.bold)
                .foregroundColor(Color("Secondary"))
            
            Text(routine.description)
                .font(.custom("Poppins", size: 16))
                .foregroundColor(Color("Secondary").opacity(0.7))
                .lineLimit(3)
                .frame(minHeight: 48)
        }
        .padding()
        .frame(minWidth: 150, minHeight: 150)
        .background(Color("Primary"))
        .cornerRadius(10)
        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)
    }
}



