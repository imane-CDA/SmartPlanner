//
//  TaskDescription.swift
//  SmartPlanner
//
//  Created by Apprenant131 on 19/06/2026.
//

import SwiftUI

struct TaskRowDescriptionView: View {

    let task: Task

    var body: some View {

        Text(task.details ?? "Pas de description")
            .font(.subheadline)
            .lineLimit(2)
            .foregroundStyle(.secondary)

    }
}

#Preview {
    TaskRowDescriptionView(task : Task.mock)
}
