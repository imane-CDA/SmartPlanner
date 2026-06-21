//
//  TaskDate.swift
//  SmartPlanner
//
//  Created by Apprenant131 on 19/06/2026.
//

import SwiftUI

struct TaskRowDateView: View {

    let task: Task

    var body: some View {


        Label(task.createdAt.formatted(date: .abbreviated, time: .omitted), systemImage: "calendar")
            .font(.caption)

    }
}

#Preview {
    TaskRowDateView(task : Task.mock)
}
