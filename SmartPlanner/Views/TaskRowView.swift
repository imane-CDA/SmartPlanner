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

            TaskRowHeaderView(task: task)

            TaskRowDescriptionView(task: task)

            TaskRowDateView(task: task)
            
        }
        .padding(20)
        .frame(maxWidth: .infinity)
        .background(.white.opacity(0.95))
        .clipShape(RoundedRectangle(cornerRadius: 30))
        .shadow(color: .black.opacity(0.08), radius: 10)
    }
}

#Preview {
    TaskRowView(task: Task.mocks[0])
}
