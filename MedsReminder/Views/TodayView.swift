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

#Preview {
    TabView() {
        
    TodayView()
            .tabItem {
                Image(systemName: "pills")
                Text("Today")
            }
            .tag(1)
        
        Text("Calender")
                .tabItem {
                    Image(systemName: "calendar")
                    Text("Calendar")
                }
                .tag(2)
        
        Text("Meications")
                .tabItem {
                    Image(systemName: "doc.text")
                    Text("Medications")
                }
                .tag(3)
    }
    .accentColor(.black)
}
