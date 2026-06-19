//
//  TaskRowView.swift
//  SmartPlanner
//
//  Created by Apprenant131 on 18/06/2026.
//

import SwiftUI

struct TaskRowView: View {

    let task: Task

    var body: some View {

        VStack(alignment: .leading, spacing: 16) {

            TaskRowHeader(task: task)

            TaskDescription(task: task)

            TaskDate(task: task)
            
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(RoundedRectangle(cornerRadius: 20).foregroundStyle(.white))
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .shadow(color: .black.opacity(0.05), radius: 6, y: 2)
    }
}

#Preview {
    TaskRowView(
        task:
            Task(
                title: "Faire les ",
                titleUppercase: "courses",
                description:
                    "Pathé, litiaire, lait, huile, tranche de dinde, cornichon, yaourt, fromage, créme fraîche, glace, salade, semoule, beurre, menthe.",
                createdAt: Date(),
                dueDate: Date(),
                status: .todo,
                priority: .big
            )
    )
}

#Preview {
    TaskRowView(
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
