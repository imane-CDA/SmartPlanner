//
//  Picker.swift
//  SmartPlanner
//
//  Created by Apprenant131 on 19/06/2026.
//

import SwiftUI

struct TaskStatusPickerView: View {

    // @Binding : modifie une donnée du parent
    @Binding var selectedValue: TaskStatus

    var body: some View {

        Picker("", selection: $selectedValue) {
            Text("En cours").tag(TaskStatus.todo)
            Text("Terminé").tag(TaskStatus.done)
        }.pickerStyle(.segmented)
        

    }
}


#Preview {
    TaskStatusPickerView(selectedValue: .constant(.todo))
}

