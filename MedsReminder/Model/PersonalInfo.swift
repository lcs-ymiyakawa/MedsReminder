//
//  PersonalInfo.swift
//  MedsReminder
//
//  Created by 宮川義之助 on 2024/06/13.
//

import Foundation

struct PersonalInfo: Identifiable {
    let id = UUID()
    let name: String
    let dateOfBirth: String
    let Image: String?
}

let examplePersonalInfo: [PersonalInfo] = [
    PersonalInfo(name: "Yoshi Miyakawa", dateOfBirth: "Feburuary 7th, 2006", Image: "photoImage")
]
