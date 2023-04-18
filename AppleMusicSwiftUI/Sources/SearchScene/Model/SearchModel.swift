//
//  SearchModel.swift
//  AppleMusicSwiftUI
//
//  Created by Игорь Николаев on 18.04.2023.
//

import Foundation

enum SearchModel: String, Identifiable, CaseIterable {
    case appleMusic
    case yourMedia

    var id: String {
        self.rawValue
    }

    func nameCategory() -> String {
        switch self {
        case .appleMusic:
            return "Apple Music"
        case .yourMedia:
            return "Ваша Медиатека"
        }
    }
}
