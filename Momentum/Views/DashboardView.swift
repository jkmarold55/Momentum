//
//  DashboardView.swift
//  Momentum
//
//  Created by Jake Marold on 3/14/23.
//

import SwiftUI

struct DashboardView: View {
    @EnvironmentObject var dataManager: DataManager

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    HStack {
                        Text("Your Routines")
                            .font(.custom("Poppins-Bold", size: 32))
                            .fontWeight(.bold)
                            .foregroundColor(Color("Secondary"))
                            .padding(.top, 20)
                        
                        Spacer()
                    }
                    .padding(.horizontal, 20)

                    LazyVGrid(columns: [GridItem(.adaptive(minimum: 150), spacing: 20)], spacing: 20) {
                        ForEach(dataManager.routines) { routine in
                            NavigationLink(destination: RoutineDetailView(routine: $dataManager.routines[dataManager.routines.firstIndex(where: { $0.id == routine.id })!])) {
                                RoutineCardView(routine: routine)
                                    .background(Color("Primary"))
                                    .cornerRadius(10)
                                    .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)
                            }
                            .buttonStyle(PlainButtonStyle())
                        }
                    }
                    .padding(.horizontal, 20)
                    .padding(.bottom, 20)
                    
                    Spacer()
                }
            }
            .background(Color("Tertiary").edgesIgnoringSafeArea(.bottom))
            .navigationTitle("Momentum")
            .navigationBarItems(trailing: NavigationLink(destination: RoutineEditView()) {
                Image(systemName: "plus")
                    .font(.system(size: 24))
                    .foregroundColor(Color("Secondary"))
            })
        }
    }
}





