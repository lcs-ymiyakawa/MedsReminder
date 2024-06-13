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
    Medication(title: "Vitamine C", time: "Breakfast", description: "a"),
    Medication(title: "Med2", time: "Lunch", description: "a")
]
