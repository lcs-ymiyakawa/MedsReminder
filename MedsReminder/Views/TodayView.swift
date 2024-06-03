//
//  TodayView.swift
//  MedsReminder
//
//  Created by 宮川義之助 on 2024/06/03.
//

import SwiftUI

struct TodayView: View {
    var body: some View {
        ZStack {
            Color.specialGreen
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
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
