//
//  TaskViewModel.swift
//  SmartPlanner
//
//  Created by Apprenant131 on 21/06/2026.
//

import SwiftUI // -> modèles utilisés dans les views
// -> rend une classe observable automatiquement
import Observation


// @Observable : SwiftUI doit surveiller automatiquement toutes les propriétés de cette classe
@Observable
// final : ça empêche l’héritage
final class TaskViewModel {

    // base de donnée locale (CRUD dessus)
    var tasks: [Task] = Task.mocks
    
    // filtre les tâches
    var selectedValue: TaskStatus = .todo
    
}
