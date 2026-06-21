//
//  TaskHeaderDetailView.swift
//  SmartPlanner
//
//  Created by Apprenant131 on 20/06/2026.
//

import SwiftUI


struct TaskDetailHeaderView: View {

    let task: Task

    var body: some View {

        VStack(alignment: .leading, spacing: 8) {

            HStack {
                VStack(alignment: .leading, spacing: 4) {

                    Text(task.title)
                        .font(.title)
                        .foregroundStyle(.secondary)

                    Text(task.titleUppercase.uppercased())
                        .font(.largeTitle).bold()
                }

                Spacer()

                Image(systemName: "square.and.pencil")
                    .font(.title2)
                    .foregroundStyle(.secondary)
            }
        }.padding()

    }
}

#Preview {
    TaskDetailHeaderView(task : Task.mock)
}
