//
//  Medication.swift
//  MedsReminder
//
//  Created by 宮川義之助 on 2024/06/10.
//

import Foundation

struct Medication: Identifiable, Codable {
    var id: Int?
    var title: String
    var done:  Bool

    enum CodingKeys: String, CodingKey {
        case id
        case title
        case done
    }
}

let firstItem = Medication(title: "a", done: true)
let secondItem = Medication(title: "b", done: true)
let thirdItem = Medication(title: "c", done: false)

let exampleItems = [
    
    firstItem
    ,
    secondItem
    ,
    thirdItem
    ,
    
]
