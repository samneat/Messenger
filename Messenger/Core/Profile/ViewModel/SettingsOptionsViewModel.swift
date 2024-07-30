//
//  SettingsOptionsViewModel.swift
//  Messenger
//
//  Created by Sam Neat on 30/07/2024.
//

import Foundation
import SwiftUI

enum SettingsOptionsViewModel: Int, CaseIterable, Identifiable {
    case darkMode
    case activeStatus
    case accessability
    case privacy
    case notifications
    
    var title: String {
        switch self {
        case .darkMode:
            return "Dark Mode"
        case .activeStatus:
            return "Active Status"
        case .accessability:
            return "Accessability"
        case .privacy:
            return "Privacy and Safety"
        case .notifications:
            return "Notifications"
        }
    }
    
    var image: String {
        switch self {
        case .darkMode:
            return "moon.circle.fill"
        case .activeStatus:
            return "message.badge.circle.fill"
        case .accessability:
            return "person.circle.fill"
        case .privacy:
            return "lock.circle.fill"
        case .notifications:
            return "bell.circle.fill"
        }
    }
    
    var imageBackgroundColor: Color {
        switch self {
        case .darkMode:
            return .black
        case .activeStatus:
            return Color(.systemGreen)
        case .accessability:
            return .black
        case .privacy:
            return Color(.systemBlue)
        case .notifications:
            return Color(.systemPurple)
        }
    }
    
    var id: Int { return self.rawValue }
}
