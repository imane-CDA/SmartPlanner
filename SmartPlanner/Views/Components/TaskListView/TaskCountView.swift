//
//  TaskCountView.swift
//  SmartPlanner
//
//  Created by Apprenant131 on 21/06/2026.
//

import SwiftUI

struct TaskCountView: View {
    
    let filteredTasks : [Task]
    
    var body: some View {
        
        HStack {
            Text("Tâche\(filteredTasks.count > 0 ? "s" : "") : \(filteredTasks.count)")
            Spacer()
        } .font(.caption)
          .foregroundStyle(.secondary)
          .padding(.leading, 8)    }
}

#Preview {
    TaskCountView(filteredTasks: Task.mocks)
}
