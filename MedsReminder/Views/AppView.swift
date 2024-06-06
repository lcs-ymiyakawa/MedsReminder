//
//  TodayView.swift
//  MedsReminder
//
//  Created by 宮川義之助 on 2024/06/03.
//

import SwiftUI



#Preview {
    TabView() {
        
    TodayView()
            .tabItem {
                Image(systemName: "pills")
                Text("Today")
            }
            .tag(1)
        
        TodayView()
                .tabItem {
                    Image(systemName: "calendar")
                    Text("Calendar")
                }
                .tag(2)
        
        TodayView()
                .tabItem {
                    Image(systemName: "doc.text")
                    Text("Medications")
                }
                .tag(3)
    }
    .accentColor(.white)
    .preferredColorScheme(.dark)
}
