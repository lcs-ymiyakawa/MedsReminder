//
//  TodayView.swift
//  MedsReminder
//
//  Created by 宮川義之助 on 2024/06/06.
//

import SwiftUI

struct TodayView: View {
    var body: some View {
        ZStack {
            Color.specialGreen
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                HStack {
                    ZStack {
                        RoundedRectangle(cornerRadius: 30)
                            .fill(.white)
                            .frame(height: 90)
                        .frame(width: 200)
                        Text("Date")
                            .font(.custom("Helvetica", size: 50, relativeTo: .largeTitle))
                    }
                    .padding()
                    Spacer()
                    
                    NavigationLink {
                        PersonalInformationView()
                    } label: {
                        Image(systemName: "person.circle")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 60)
                    }
                    .foregroundStyle(.white)
                    .padding(.horizontal, 20)
                }
                    
                Text("Today")
                    .foregroundStyle(Color.white)
                    .font(.custom("Helvetica", size: 64, relativeTo: .largeTitle))
                    .bold()

                Spacer()
                
            }
        }
    }
}

#Preview {
    TodayView()
}
