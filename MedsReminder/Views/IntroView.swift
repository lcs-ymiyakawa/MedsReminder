//
//  IntroView.swift
//  MedsReminder
//
//  Created by 宮川義之助 on 2024/06/03.
//

import SwiftUI


struct IntroView: View {
    
    // MARK: Stored properties
    @State private var titleOffset = -350.0
    
    //MARK: Computed properties
    var body: some View {
        NavigationStack {
            ZStack {
                // back ground
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
                        .padding(.horizontal, 40)
                        .offset(x: -40)
                    
                    Spacer()
                    
                    NavigationLink {
                        LandingView()
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
                    titleOffset = -20.0
                }
                
            }

        }
    }
}

#Preview {
    IntroView()
}

