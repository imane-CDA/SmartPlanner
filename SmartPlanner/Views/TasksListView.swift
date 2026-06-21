//
//  ListTasksView.swift
//  SmartPlanner
//
//  Created by Apprenant131 on 17/06/2026.
//

import SwiftUI

struct TasksListView: View {

    @State private var viewModel = TaskViewModel()

    var filteredTasks: [Task] {
        viewModel.tasks.filter {
            $0.status == viewModel.selectedValue
        }
    }

    var body: some View {

        ScrollView {

            VStack(spacing: 16) {

                TaskStatusPickerView(
                    selectedValue: $viewModel.selectedValue
                )

                TaskCountView(
                    filteredTasks: filteredTasks
                )

                VStack(spacing: 16) {

                    if filteredTasks.isEmpty {
                        NoTasksView(
                            message: viewModel.selectedValue == .todo
                                ? "Aucune tâche à faire"
                                : "Aucune tâche terminée"
                        )
                    }

                    ForEach(filteredTasks) { task in

                        NavigationLink {
                            TaskDetailView(task: task)
                        } label: {
                            TaskRowView(task: task)
                        }
                        .buttonStyle(.plain)
                    }

                    Text("Total: \(viewModel.tasks.count)")
                    Text("Filtrées: \(filteredTasks.count)")
                }
            }
            .padding()
        }
        .scrollIndicators(.hidden)
    }
}

#Preview {
    NavigationStack {
        TasksListView()
    }
}
