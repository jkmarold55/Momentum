//
//  Routine.swift
//  Momentum
//
//  Created by Jake Marold on 3/14/23.
//

import Foundation

struct Routine: Identifiable, Codable {
    var id = UUID()
    var name: String
    var description: String
    var scheduledTime: Date
    var completed: Bool
}


