//
//  AddMedicationsView.swift
//  MedsReminder
//
//  Created by 宮川義之助 on 2024/06/11.
//

import SwiftUI

struct AddMedicationsView: View {
    @State private var title: String = ""
    @State private var time: String = ""
    @State private var description: String = ""
    
    @Binding var dismissSheet: Bool
    @Binding var medications: [Medication]
    
    var atLeastOneInputFieldsAreBlank: Bool {
        return title.isEmpty || time.isEmpty || description.isEmpty
    }
    
    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("Medication")) {
                    TextField("Medication", text: $title)
                    Picker("Time", selection: $time) {
                        Text("Breakfast").tag("Breakfast")
                        Text("Lunch").tag("Lunch")
                        Text("Dinner").tag("Dinner")
                    }
                }
                Section(header: Text("Description")) {
                    TextEditor(text: $description)
                        .frame(height: 200)
                }
            }
            .navigationTitle("Add Medication")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button {
                        let newMedication = Medication(title: title, time: time, description: description)
                        
                        medications.append(newMedication)
                        dismissSheet = false
                    } label: {
                        Text("Done")
                    }
                    .disabled(atLeastOneInputFieldsAreBlank)
                }
            }
        }
    }
}

#Preview {
    AddMedicationsView(
        dismissSheet: .constant(true),
        medications: Binding.constant(exampleMedications)
        )
}

