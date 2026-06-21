//
//  NoTasks.swift
//  SmartPlanner
//
//  Created by Apprenant131 on 19/06/2026.
//

import SwiftUI

struct NoTasksView: View {

    let message: String

    var body: some View {

        ContentUnavailableView {
            Label(message, systemImage: "checklist")
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(.gray.opacity(0.1))
        .shadow(radius: 1)
        .cornerRadius(20)

    }
}

#Preview {
    NoTasksView(message : "")
}
