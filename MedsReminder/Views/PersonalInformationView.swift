//
//  PersonalInformationView.swift
//  MedsReminder
//
//  Created by 宮川義之助 on 2024/06/06.
//

import SwiftUI

struct PersonalInformationView: View {
    
    @State var name = ""
    @State var dateOfBirth = ""
    
    var body: some View {
        ZStack {
            Color.specialGreen
                .ignoresSafeArea()
            VStack {
                HStack {
                    Text("Cancel")
                        .font(.custom("Helvetica", size: 20, relativeTo: .largeTitle))
                        .padding()
                    Spacer()
                    Text("Done")
                        .font(.custom("Helvetica", size: 20, relativeTo: .largeTitle))
                        .padding()
                }
                HStack {
                    Text("Personal Info")
                        .font(.custom("Helvetica", size: 23, relativeTo: .largeTitle))
                    .bold()
                    .padding(10)
                    Spacer()
                }
                
                ZStack {
                    Rectangle()
                        .fill(.white)
                        .frame(height: 300)
                    .padding(.top, 30)
                    VStack {
                        HStack {
                            VStack {
                                TextField("Enter your name", text: $name)
                                    .font(.custom("Helvetica", size: 20, relativeTo: .largeTitle))
                                .padding(10)
                                TextField("Date of Birth", text: $dateOfBirth)
                                    .font(.custom("Helvetica", size: 20, relativeTo: .largeTitle))
                                .padding(10)
                            }
                            Image("photoImage")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100)
                        }
                    }
                }
                Spacer()
            }
        }
    }
}

#Preview {
    PersonalInformationView()
}
