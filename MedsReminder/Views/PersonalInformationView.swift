//
//  PersonalInformationView.swift
//  MedsReminder
//
//  Created by 宮川義之助 on 2024/06/06.
//

import SwiftUI

struct PersonalInformationView: View {
    
    @State private var name: String = ""
    @State private var dateOfBirth: String = ""
    @State private var image: String? = ""
    @State var newImage: PersonalInfoImage?
    
    @Binding var personalInfos: [PersonalInfo]
    
    var atLeastOneInputFieldsAreBlank: Bool {
        return name.isEmpty || dateOfBirth.isEmpty || ((image?.isEmpty) != nil)
    }
    
    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("Medication")) {
                    TextField("Medication", text: $name)
                    TextField("Time", text: $dateOfBirth) {
                        PhotosPicker(selection: $selectionResult, matching: .images) {
                            if let newImage = newImage {
                                newImage.image
                                    .resizable()
                                    .scaledToFit()

                            } else {
                                Image(systemName: "photo.badge.plus")
                                    .symbolRenderingMode(.multicolor)
                                    .font(.system(size: 30))
                                    .foregroundStyle(.tint)
                                
                            }
                        }
                    }
                }
            }
            .navigationTitle("Personal Info")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    PersonalInformationView(personalInfos: Binding.constant(examplePersonalInfo))
}
