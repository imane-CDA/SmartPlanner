//
//  NoTasks.swift
//  SmartPlanner
//
//  Created by Apprenant131 on 19/06/2026.
//

import SwiftUI

struct NoTasks: View {

    @Binding var filteredTasks: [Task]
    @Binding var selectedValue: TaskStatus

    var body: some View {

        // Aucune tâches
        if filteredTasks.isEmpty {

            // composant SwiftUI (iOS 17+) qui affiche un état vide élégant avec une icône, un titre et éventuellement une description.
            ContentUnavailableView {
                Label(
                    selectedValue == .todo
                        ? "Aucune tâche à faire"
                        : "Aucune tâche terminée",
                    systemImage: selectedValue == .todo
                        ? "checklist"
                        : "checkmark.circle"
                )
            } description: {
                Text(
                    selectedValue == .todo
                        ? "Ajoutez votre première tâche."
                        : "Aucune tâche n'est encore marquée comme terminée."
                )
            }
            // carte aucune tâches
            .frame(maxWidth: .infinity)
            .padding()
            .background(.gray.opacity(0.1))
            .shadow(radius: 1)
            .cornerRadius(20)

        } else {

            // suite dans ListTasksView

        }
    }
}

#Preview {
    NoTasks(
        filteredTasks: .constant([]),
        selectedValue: .constant(.todo)
    )
}
