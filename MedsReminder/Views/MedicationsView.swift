//
//  MedicationsView.swift
//  MedsReminder
//
//  Created by 宮川義之助 on 2024/06/10.
//

import SwiftUI

struct MedicationsView: View {
    var body: some View {
        ZStack {
            Color.specialGreen
                .ignoresSafeArea()
            VStack {
                HStack {
                    ZStack {
                        HStack {
                            RoundedRectangle(cornerRadius: 50)
                                .fill(.white)
                                .frame(height: 90)
                            .frame(width: 250)
                        }
                       
                            Text("Medications")
                                .foregroundColor(.black)
                                .font(.custom("Helvetica", size: 30, relativeTo: .largeTitle))
                                .bold()
                        .padding()
                    }
                    .padding()
                    Spacer()
                }
                
                List {
                    NavigationLink {
                        MedicationDetailView()
                    } label: {
                        Text("a")
                    }

                }

                
            }
        }
    }
}

#Preview {
    MedicationsView()
}
