//
//  ListTasksView.swift
//  SmartPlanner
//
//  Created by Apprenant131 on 17/06/2026.
//

import SwiftUI

struct ListTasksView: View {

    var tasks: [Task]

    @State private var selectedValue: TaskStatus = .todo

    var body: some View {

        // Background
        ZStack {
            Image("backgroundApp")
                .resizable()
                .ignoresSafeArea()

            ScrollView {

                VStack(spacing: 16) {

                    // Picker
                    TaskStatusPicker(selectedValue: $selectedValue)

                    // tableau de tâches filtré (selection picker)
                    @State var filteredTasks = tasks.filter {
                        $0.status == selectedValue
                    }

                    VStack(spacing: 16) {

                        // si pas de tâche
                        NoTasks(
                            filteredTasks: $filteredTasks,
                            selectedValue: $selectedValue
                        )

                        // ForEach sur tableau de tâches filtrés
                        ForEach(filteredTasks) { task in

                            // navigation
                            NavigationLink {
                                TaskDetailView(task: task)
                            } label: {
                                TaskRowView(task: task)
                            }.buttonStyle(.plain)

                        }
                    }
                }
                .padding()

            }.scrollIndicators(.hidden)
        }
    }
}

#Preview {
    NavigationStack {
        ListTasksView(tasks: tasks)
    }
}
