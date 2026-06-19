//
//  SmartPlannerApp.swift
//  SmartPlanner
//
//  Created by Apprenant131 on 17/06/2026.
//

import SwiftUI

// @main : point d'entrée de l'application
@main
struct SmartPlannerApp: App {
        
    var body: some Scene {
        // WindowGroup : crée la fenêtre principale
        WindowGroup {
            // première vue affichée
            ListTasksView(tasks: tasks)
        }
    }
}
