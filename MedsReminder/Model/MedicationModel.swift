//
//  MedicationModel.swift
//  MedsReminder
//
//  Created by 宮川義之助 on 2024/06/07.
//

import SwiftData

@Model
class MedicationModel: Identifiable {
    var title: String
    var done: Bool
    
    init(title: String, done: Bool) {
        self.title = title
        self.done = done
    }
}

extension MedicationModel {
    
    @MainActor
    static var preview: ModelContainer {
        
        let container = try! ModelContainer(
            for: MedicationModel.self,
            configurations: ModelConfiguration(isStoredInMemoryOnly: true)
        )
        
        // Add mock data
        container.mainContext.insert(
            MedicationModel(title: "Go for a walk", done: false)
        )
        container.mainContext.insert(
            MedicationModel(title: "Have a nap", done: true)
        )
        container.mainContext.insert(
            MedicationModel(title: "Call mom", done: false)
        )

        return container
    }
}

extension MedicationModel {
    
    static let someItem = MedicationModel(title: "Read a book", done: true)
    static let anotherItem = MedicationModel(title: "Make a sandwich", done: false)

}
