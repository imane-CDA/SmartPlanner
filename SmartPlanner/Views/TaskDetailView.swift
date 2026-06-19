//
//  TaskDetailView.swift
//  SmartPlanner
//
//  Created by Apprenant131 on 19/06/2026.
//

import SwiftUI

struct TaskDetailView: View {
    
    var task: Task

    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    TaskDetailView(task:
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
