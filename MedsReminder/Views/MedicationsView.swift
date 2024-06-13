//
//  MedicationsView.swift
//  MedsReminder
//
//  Created by 宮川義之助 on 2024/06/10.
//

import SwiftUI

struct MedicationsView: View {
    @State private var addNewMedicationIsShowing = false
    @EnvironmentObject var viewModel: MedicationViewModel
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.specialGreen
                    .ignoresSafeArea()
                
                VStack {
                    List {
                        ForEach(viewModel.medications) { medication in
                            NavigationLink(destination: MedicationDetailView(medication: medication)) {
                                Text(medication.medication)
                            }
                            .swipeActions {
                                Button("Delete", role: .destructive) {
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
                    AddMedicationsView(dismissSheet: $addNewMedicationIsShowing)
                        .environmentObject(viewModel)
                }
            }
            .navigationTitle("Medications")
        }
    }
    
    private func delete(_ medication: Medication) {
        if let index = viewModel.medications.firstIndex(where: { $0.id == medication.id }) {
            viewModel.medications.remove(at: index)
        }
    }
}

#Preview {
    MedicationsView().environmentObject(MedicationViewModel())
}
