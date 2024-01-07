//
//  ModelCategories.swift
//  AppleMusicSwiftUI
//
//  Created by Игорь Николаев on 01.04.2023.
//

import SwiftUI

struct MusicCategoryModel: Identifiable {
    var id = UUID()
    var category: String
    var icon: String
    
    init(category: String, icon: String) {
        self.category = category
        self.icon = icon
    }
}
