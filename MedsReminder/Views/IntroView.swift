//
//  IntroView.swift
//  MedsReminder
//
//  Created by 宮川義之助 on 2024/06/03.
//

import SwiftUI


struct IntroView: View {
    
    @State private var titleOffset = -350.0
    var body: some View {
        ZStack {
            Color.specialGreen
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Text("Meds\nReminder")
                    .foregroundStyle(Color.white)
                    .font(.custom("Helvetica", size: 64, relativeTo: .largeTitle))
                    .bold()
                    .offset(x: titleOffset)
                
                Spacer()
                
                Image("IntroImage")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal, 50)
                
                Spacer()
                
                NavigationLink {
                    Text("another view")
                } label: {
                    Text("Get Started")
                        .underline()
                        .foregroundStyle(Color.white)
                        .font(.largeTitle)
                        .bold()

                }


                Spacer()

            }
        }
        .task {
            withAnimation(.easeInOut(duration: 1.5)) {
                titleOffset = 0.0
            }
            
        }
    }
}

#Preview {
    IntroView()
}
