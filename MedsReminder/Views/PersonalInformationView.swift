//
//  PersonalInformationView.swift
//  MedsReminder
//
//  Created by 宮川義之助 on 2024/06/06.
//

import PhotosUI
import SwiftUI

struct PersonalInformationView: View {
    @State private var name: String = ""
    @State private var dateOfBirth: String = ""
    @State private var newImage: PersonalInfoImage?
    @State private var selectedPhotoPickerItem: PhotosPickerItem?
    
    @Binding var personalInfo: PersonalInfo
    
    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("Personal Info")) {
                    TextField("Name", text: $name)
                    TextField("Date of Birth", text: $dateOfBirth)
                    
                    PhotosPicker(selection: $selectedPhotoPickerItem, matching: .images) {
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
            .navigationTitle("Personal Info")
            .navigationBarTitleDisplayMode(.inline)
            
        }
    }
}

#Preview {
    PersonalInformationView(personalInfo: Binding.constant(examplePersonalInfo))
}
