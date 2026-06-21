//
//  TaskRowHeader.swift
//  SmartPlanner
//  Created by Apprenant131 on 19/06/2026.
//

import SwiftUI

struct TaskRowHeaderView: View {

    let task: Task

    var body: some View {

        HStack(spacing: 8) {

            // titre + SF Symbole
            HStack(spacing: 10) {

                Image(systemName: task.status == .todo
                      ? "hourglass"
                      : "checkmark.circle.fill")
                    .font(.title)
                    .foregroundStyle(task.priority.color.opacity(0.8))

                VStack(alignment: .leading, spacing: 2) {
                    Text(task.title)
                        .font(.headline)
                        .foregroundStyle(.secondary)
                        

                    Text(task.titleUppercase.uppercased())
                        .font(.subheadline).bold()
                }
            }

            Spacer()

            // priorité
            Label(task.priority.rawValue,
                  systemImage: "chart.line.uptrend.xyaxis")
                .font(.subheadline.bold())
                .padding(.horizontal, 12)
                .padding(.vertical, 8)
                .background(task.priority.color.opacity(0.15))
                .foregroundStyle(task.priority.color)
                .clipShape(Capsule())
        }
        .padding()
    }
}


#Preview {
    TaskRowHeaderView(task: Task.mock)
}
