//
//  MedsTodayView.swift
//  MedsReminder
//
//  Created by 宮川義之助 on 2024/06/07.
//

import SwiftUI

struct MedsTodayView: View {
    
    @State private var title: String = ""
    
    var body: some View {
        ZStack {
            Color.specialGreen
                .ignoresSafeArea()
            
                ZStack {
                    RoundedRectangle(cornerRadius: 50)
                        .fill(.white)
                        .frame(height: 90)
                    HStack {
                        Image(systemName: "circle")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.black)
                            .frame(width: 50)
                            .padding(5)
                        TextField("Medication", text: $title)
                            .foregroundColor(.black)
                            .font(.custom("Helvetica", size: 25, relativeTo: .largeTitle))
                    }
                    .padding()
                }
            
        }
    }
}

#Preview {
    MedsTodayView()
}
