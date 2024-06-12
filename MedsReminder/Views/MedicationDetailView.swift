//
//  MedicationDetailView.swift
//  MedsReminder
//
//  Created by 宮川義之助 on 2024/06/10.
//

import SwiftUI

struct MedicationDetailView: View {
    var body: some View {
        ZStack {
            Color.specialGreen
                .ignoresSafeArea()
            VStack {
                ZStack {
                    Rectangle()
                        .fill(.white)
                        .frame(height: 300)
                    .padding(.top, 30)
                    VStack {
                        HStack {
                            VStack {
                                Text("Medication")
                                    .font(.custom("Helvetica", size: 20, relativeTo: .largeTitle))
                                .padding(10)
                                
                                Text("purpose")
                                    .font(.custom("Helvetica", size: 20, relativeTo: .largeTitle))
                                .padding(10)
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
    MedicationDetailView()
}
