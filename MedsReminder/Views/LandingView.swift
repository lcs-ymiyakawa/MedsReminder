//
//  LandingView.swift
//  MedsReminder
//
//  Created by 宮川義之助 on 2024/06/10.
//

import SwiftUI

struct LandingView: View {
    var body: some View {
        TabView() {
            
            TodayView()
                .tabItem {
                    Image(systemName: "pills")
                    Text("Today")
                }
                .tag(1)
            
            MedicationsView()
                .tabItem {
                    Image(systemName: "doc.text")
                    Text("Medications")
                }
                .tag(2)
        }
        .accentColor(.black)
    }
}

#Preview {
    LandingView()
}
