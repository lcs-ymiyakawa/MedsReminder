//
//  MedicationsView.swift
//  MedsReminder
//
//  Created by 宮川義之助 on 2024/06/10.
//

import SwiftUI

struct MedicationsView: View {
    
    
    @State private var addNewMedicationIsShowing = false
    
    @State private var medications: [Medication] = exampleMedications
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.specialGreen
                    .ignoresSafeArea()
                
                VStack {
                    
                    List {
                        ForEach(medications) { medication in
                        NavigationLink(destination: MedicationDetailView()) {
                            Text(medication.medication)
                        }
                            
                        .swipeActions {
                            Button("Delete",
                                   role: .destructive) {
                                delete(medication)
                            }
                        }
                            
                    }
                }
                    .listStyle(.plain)
                }
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button {
                            addNewMedicationIsShowing = true
                        } label: {
                            Image(systemName: "plus")
                        }
                    }
                }
                .sheet(isPresented: $addNewMedicationIsShowing) {
                    AddMedicationsView(dismissSheet: $addNewMedicationIsShowing,
                        medications: $medications
                    )
                }
            }
            .navigationTitle("Medications")
        }
    }
    private func delete(_ medication: Medication) {
         if let index = medications.firstIndex(where: { $0.id == medication.id }) {
             medications.remove(at: index)
         }
     }
}



#Preview {
    MedicationsView()
}
