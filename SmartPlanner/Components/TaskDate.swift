//
//  TaskDate.swift
//  SmartPlanner
//
//  Created by Apprenant131 on 19/06/2026.
//

import SwiftUI

struct TaskDate: View {

    var task: Task

    var body: some View {

        // Date
        Text(task.createdAt, style: .date)
            .font(.caption)

    }
}

#Preview {
    TaskDate(
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
