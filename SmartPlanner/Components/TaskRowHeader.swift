//
//  TaskRowHeader.swift
//  SmartPlanner
//
//  Created by Apprenant131 on 19/06/2026.
//

import SwiftUI

struct TaskRowHeader: View {

    var task: Task

    var body: some View {

        HStack(spacing: 8) {

            // Titre + SF Symbol
            HStack {
                Image(
                    systemName: task.status == .todo
                        ? "hourglass"
                        : "checkmark.circle.fill"
                ).font(.title)
                    .foregroundStyle(task.priority.color.opacity(0.8))

                HStack(spacing: 0) {
                    VStack(alignment: .leading) {
                        Text(task.title)
                            .font(.headline)
                            .fontWeight(.semibold)
                        Text(task.titleUppercase.uppercased())
                    }
                }
            }
            .font(.headline)

            Spacer()

            // Priorité
            HStack(spacing: 4) {

                Text(task.priority.rawValue)
                    .font(.caption2.bold())
                    .padding(.horizontal, 8)
                    .padding(.vertical, 4)
                    .background(task.priority.color.opacity(0.15))
                    .foregroundStyle(task.priority.color)
                    .clipShape(Capsule())
            }
        }

    }
}

#Preview {
    TaskRowHeader(
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
