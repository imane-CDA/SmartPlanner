//
//  TaskDescription.swift
//  SmartPlanner
//
//  Created by Apprenant131 on 19/06/2026.
//

import SwiftUI

struct TaskDescription: View {

    var task: Task

    var body: some View {

        // Description
        Text(task.description ?? "Pas de description")
            .font(.subheadline)
            .lineLimit(2)
            .foregroundStyle(.secondary)

    }
}

#Preview {
    TaskDescription(
        task:
            Task(
                title: "Travailler sur ",
                titleUppercase: "SmartPlanner",
                description:
                    "Tâche à réaliser dans le cadre de mon organisation quotidienne.",
                createdAt: Date(),
                dueDate: nil,
                status: .todo,
                priority: .medium,
            )
    )
}
