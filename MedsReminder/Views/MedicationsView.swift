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
                        NavigationLink(destination: MedicationDetailView()) {
                            Text("a")
                        }
                        
                        NavigationLink(destination: MedicationDetailView()) {
                            Text("b")
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
}


#Preview {
    MedicationsView()
}
