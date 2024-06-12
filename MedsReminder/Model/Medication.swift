//
//  Medication.swift
//  MedsReminder
//
//  Created by 宮川義之助 on 2024/06/10.
//

import SwiftUI

struct Medication: Identifiable {
    var id = UUID()
    var medication: String
    var time: Int
    var description: String
}

let exampleMedications = [
    Medication(medication: "Ibuprofen", time: 1, description: "Take after breakfast"),
    Medication(medication: "Vitamin C", time: 2, description: "Take after lunch")
]
