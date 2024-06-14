//
//  PersonalInfoImage.swift
//  MedsReminder
//
//  Created by 宮川義之助 on 2024/06/13.
//

import SwiftUI

struct PersonalInfoImage: Transferable, Equatable {
    let image: Image
    let data: Data
    
    static var transferRepresentation: some TransferRepresentation {
        DataRepresentation(importedContentType: .image) { importedImageData in
            guard let image = PersonalInfoImage(rawImageData: importedImageData) else {
                throw TransferError.importFailed
            }
            return image
        }
    }
}

extension PersonalInfoImage {
    init?(rawImageData: Data) {
        guard let uiImage = UIImage(data: rawImageData) else {
            return nil
        }
        let image = Image(uiImage: uiImage)
        self.init(image: image, data: rawImageData)
    }
}

enum TransferError: Error {
    case importFailed
}
