//
//  NotificationManager.swift
//  Momentum
//
//  Created by Jake Marold on 3/14/23.
//

import Foundation
import UserNotifications

class NotificationManager {
    static let shared = NotificationManager()

    private init() {}

    func scheduleNotification(for routine: Routine) {
        let content = UNMutableNotificationContent()
        content.title = routine.name
        content.body = routine.description
        content.sound = .default

        let components = Calendar.current.dateComponents([.hour, .minute], from: routine.scheduledTime)
        let trigger = UNCalendarNotificationTrigger(dateMatching: components, repeats: true)

        let request = UNNotificationRequest(identifier: routine.id.uuidString, content: content, trigger: trigger)
        UNUserNotificationCenter.current().add(request)
    }

    func cancelNotification(for routine: Routine) {
        UNUserNotificationCenter.current().removePendingNotificationRequests(withIdentifiers: [routine.id.uuidString])
        }
    }

