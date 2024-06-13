//
//  MedicationViewModel.swift
//  MedsReminder
//
//  Created by 宮川義之助 on 2024/06/12.
//

import Foundation
import SwiftUI

class MedicationViewModel: ObservableObject {
    @Published var medications: [Medication] = exampleMedications
}
