//
//  MedicationDetailView.swift
//  MedsReminder
//
//  Created by 宮川義之助 on 2024/06/10.
//

import SwiftUI

struct MedicationDetailView: View {
    var medication: Medication
    
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
            VStack {
                ZStack {
                    Rectangle()
                        .fill(Color.white)
                        .frame(height: 300)
                        .padding(.top, 30)
                    VStack {
                        HStack {
                            VStack(alignment: .leading) {
                                Text(medication.medication)
                                    .font(.custom("Helvetica", size: 30, relativeTo: .largeTitle))
                                Text("Time: \(medication.time)")
                                    .font(.subheadline)
                                Text(medication.description)
                                    .font(.subheadline)
                            }
                        }
                        .padding()
                    }
                }
                Spacer()
            }
        }
    }
}

#Preview {
    MedicationDetailView(medication: exampleMedications[1])
}
