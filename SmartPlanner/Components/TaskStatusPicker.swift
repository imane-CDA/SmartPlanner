//
//  Picker.swift
//  SmartPlanner
//
//  Created by Apprenant131 on 19/06/2026.
//

import SwiftUI

struct TaskStatusPicker: View {

    @Binding var selectedValue: TaskStatus

    var body: some View {

        // Picker
        Picker("", selection: $selectedValue) {
            Text("En cours").tag(TaskStatus.todo)
            Text("Terminé").tag(TaskStatus.done)
        }.pickerStyle(.segmented)

    }
}

// .constant(.) : crée un Binding dont la valeur est fixe et ne peut pas être modifiée.
#Preview {
    TaskStatusPicker(selectedValue: .constant(.todo))
}
