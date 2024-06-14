//
//  PersonalInfo.swift
//  MedsReminder
//
//  Created by 宮川義之助 on 2024/06/13.
//

import Foundation
import SwiftUI

struct PersonalInfo: Identifiable {
    let id = UUID()
    let name: String
    let dateOfBirth: String
    let ImageName: String?
}

let examplePersonalInfo = PersonalInfo(name: "Yoshi Miyakawa", dateOfBirth: "Feburuary 7th, 2006", ImageName: "YoshiImage")
