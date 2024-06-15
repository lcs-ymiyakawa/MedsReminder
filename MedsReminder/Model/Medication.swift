//
//  Medication.swift
//  MedsReminder
//
//  Created by 宮川義之助 on 2024/06/10.
//

import Foundation

struct Medication: Identifiable {
    let id = UUID()
    let title: String
    let time: String
    let description: String
}

let exampleMedications: [Medication] = [
    Medication(title: "Vitamine C", time: "Breakfast", description: "Take it with water"),
    Medication(title: "Methylphenidate", time: "Lunch", description: "Take it in 30 minutes after meal")
]
