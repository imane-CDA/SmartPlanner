//
//  Task.swift
//  SmartPlanner
//
//  Created by Apprenant131 on 17/06/2026.
//

import SwiftUI

struct Task : Identifiable {
    
    let id = UUID()
    
    var title : String
    var titleUppercase : String
    var details : String?
    var adresse : String?
    var city : String?
    
    // Date de création
    var createdAt : Date
    // Date d'échéance
    var dueDate : Date?
    
    var status : TaskStatus
    var priority : TaskPriority
       
}

enum TaskStatus: String, CaseIterable {
    case todo = "À faire"
    case done = "Terminé"
}

enum TaskPriority : String, CaseIterable {
    case big = "Haute"
    case medium = "Moyenne"
    case small = "Basse"
    
    var color : Color {
        // self : permet à une instance d'accéder explicitement à ses propres propriétés, méthodes ou à sa propre valeur.
        switch self {
        case .big :
                .red
        case .medium :
                .orange
        case .small :
                .green
        }
    }
}
