//
//  TaskDetailView.swift
//  SmartPlanner
//
//  Created by Apprenant131 on 19/06/2026.
//

import SwiftUI


struct TaskDetailView: View {

    let task: Task

    
    var body: some View {

        ScrollView {

            VStack(alignment: .leading, spacing: 24) {

                TaskDetailHeaderView(task: task)

                
                // Description
                VStack(alignment: .leading, spacing: 16) {

                    Label("DESCRIPTION", systemImage: "doc.text")
                        .font(.headline)
                        .foregroundStyle(.orange)

                    Text(task.details ?? "Aucune description")
                        .font(.body)
                        .lineSpacing(5)

                }
                .padding(20)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(.white.opacity(0.95))
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(color: .black.opacity(0.08), radius: 10)

                
                // Lieu
                if task.adresse != nil || task.city != nil {

                    VStack(alignment: .leading, spacing: 16) {

                        Label("LIEU", systemImage: "location")
                            .font(.headline)
                            .foregroundStyle(.orange)

                        if let adresse = task.adresse {
                            Label(
                                task.adresse ?? "Aucune adresse",
                                systemImage: "house.fill"
                            )
                        }
                        
                        Divider()

                        if let city = task.city {
                            Label(
                                task.city ?? "Aucune ville",
                                systemImage: "building.2.fill"
                            )
                        }
                    }
                    .padding(20)
                    .frame(maxWidth: .infinity)
                    .background(.white.opacity(0.95))
                    .clipShape(RoundedRectangle(cornerRadius: 30))
                    .shadow(color: .black.opacity(0.08), radius: 10)
                }

                // Infos
                VStack(spacing: 20) {

                    // crée
                    HStack {
                        Label("Créée le", systemImage: "calendar")
                        Spacer()
                        Text(
                            task.createdAt.formatted(
                                date: .abbreviated,
                                time: .omitted
                            )
                        )
                    }

                    // échéance
                    if let dueDate = task.dueDate {

                        Divider()

                        HStack {
                            Label(
                                "Échéance",
                                systemImage: "calendar.badge.clock"
                            )
                            Spacer()
                            Text(
                                dueDate.formatted(
                                    date: .abbreviated,
                                    time: .omitted
                                )
                            )
                        }
                    }

                    Divider()

                    // priorité
                    HStack {
                        Label("Priorité", systemImage: "flag")
                        Spacer()

                        Text(task.priority.rawValue)
                            .padding(.horizontal, 10)
                            .padding(.vertical, 6)
                            .background(task.priority.color.opacity(0.15))
                            .foregroundStyle(task.priority.color)
                            .clipShape(Capsule())
                    }
                }
                .padding(20)
                .frame(maxWidth: .infinity)
                .background(.white.opacity(0.95))
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(color: .black.opacity(0.08), radius: 10)
            } .padding()

            Button {

                // task.status toggle
                
            } label: {

                HStack(alignment: .center, spacing: 8) {
                    Text(
                        task.status == .todo
                            ? "Marquer comme terminé" : "Marquer comme en cours"
                    )

                    Image(systemName: "checkmark.circle")
                        .font(.headline)
                        .padding()
                }

            }
            .frame(maxWidth: .infinity)
            .background(.orange)
            .font(.title3).bold()
            .foregroundStyle(.white)
            .clipShape(Capsule())
            .padding()
            
        }.scrollIndicators(.hidden)
    }

}

#Preview {
    TaskDetailView(task : Task.mock)
}

