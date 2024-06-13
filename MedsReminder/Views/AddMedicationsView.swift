//
//  AddMedicationsView.swift
//  MedsReminder
//
//  Created by 宮川義之助 on 2024/06/11.
//

import SwiftUI

struct AddMedicationsView: View {
    @State private var medication: String = ""
    @State private var time: String = ""
    @State private var description: String = ""
    
    @Binding var dismissSheet: Bool
    @EnvironmentObject var viewModel: MedicationViewModel
    
    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("Medication")) {
                    TextField("Medication", text: $medication)
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
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        let newMedication = Medication(
                            medication: medication,
                            time: time,
                            description: description
                        )
                        viewModel.medications.append(newMedication)
                        dismissSheet = false
                    } label: {
                        Text("Add")
                    }
                }
            }
        }
    }
}

#Preview {
    AddMedicationsView(dismissSheet: .constant(true))
        .environmentObject(MedicationViewModel())
}

