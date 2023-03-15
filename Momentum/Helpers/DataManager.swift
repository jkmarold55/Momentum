//
//  DataManager.swift
//  Momentum
//
//  Created by Jake Marold on 3/14/23.
//

import Foundation
import Combine

class DataManager: ObservableObject {
    static let shared = DataManager()
    
    @Published var routines: [Routine] = []
    private let key = "routine_data"
    
    init() {
        routines = loadRoutines()
    }

    func saveRoutines(_ routines: [Routine]) {
        if let encodedData = try? JSONEncoder().encode(routines) {
            UserDefaults.standard.set(encodedData, forKey: key)
        }
    }

    func loadRoutines() -> [Routine] {
        if let data = UserDefaults.standard.data(forKey: key),
           let routines = try? JSONDecoder().decode([Routine].self, from: data) {
            return routines
        }
        return []
    }

    func deleteRoutine(_ routine: Routine) {
        var routines = loadRoutines()
        if let index = routines.firstIndex(where: { $0.id == routine.id }) {
            routines.remove(at: index)
            saveRoutines(routines)
        }
    }
}


