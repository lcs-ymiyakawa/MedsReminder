//
//  TodayView.swift
//  MedsReminder
//
//  Created by 宮川義之助 on 2024/06/06.
//

import SwiftUI

struct TodayView: View {
    
    @State private var selectedDate = Date()
    @Binding var tookMedication: Bool
    @State var medications: [Medication] = exampleMedications
    @State var personalInfos: [PersonalInfo] = examplePersonalInfo
    
    var body: some View {
        ZStack {
            Color.specialGreen
                .ignoresSafeArea()
            
            VStack {
                HStack {
                    ZStack {
                        RoundedRectangle(cornerRadius: 30)
                            .fill(.white)
                            .frame(height: 90)
                            .frame(width: 200)
                        DatePicker(
                            "", selection: $selectedDate,
                            displayedComponents: .date
                        )
                        .labelsHidden()
                        .scaleEffect(1.2)
                    }
                    .padding()
                    Spacer()
                    
                    NavigationLink {
                        PersonalInformationView(personalInfos: <#Binding<[PersonalInfo]>#>)
                    } label: {
                        Image(systemName: "person.circle")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 60)
                    }
                    .foregroundStyle(.black)
                    .padding(.horizontal, 20)
                }
                                                
                HStack {
                    ZStack {
                        Rectangle()
                            .fill(.darkGreen)
                            .frame(height: 50)
                        .frame(width: 300)
                        Text("After Breakfast")
                            .font(.custom("Helvetica", size: 30, relativeTo: .largeTitle))
                            .bold()
                    }
                    Spacer()
                }
                
                MedsTodayView()
                
                HStack {
                    ZStack {
                        Rectangle()
                            .fill(.darkGreen)
                            .frame(height: 50)
                        .frame(width: 300)
                        Text("After Lunch")
                            .font(.custom("Helvetica", size: 30, relativeTo: .largeTitle))
                            .bold()
                    }
                    Spacer()
                }
                MedsTodayView()
                
                HStack {
                    ZStack {
                        Rectangle()
                            .fill(.darkGreen)
                            .frame(height: 50)
                        .frame(width: 300)
                        Text("After Dinner")
                            .font(.custom("Helvetica", size: 30, relativeTo: .largeTitle))
                            .bold()
                    }
                    Spacer()
                }
                
                MedsTodayView()
                Spacer()
            }
        }
    }
}

#Preview {TodayView(tookMedication: .constant(true),
                    medications: Binding.constant(exampleMedications),
                    personalInfos: <#Binding<[PersonalInfo]>#>)
                        }
