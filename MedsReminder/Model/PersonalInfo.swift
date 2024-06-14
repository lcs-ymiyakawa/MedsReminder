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
    let dateOfBirth = Date()
    let ImageName: String?
}

let examplePersonalInfo = PersonalInfo(name: "Yoshi Miyakawa", ImageName: "YoshiImage")
