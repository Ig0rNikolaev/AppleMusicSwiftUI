//
//  ModelRadio.swift
//  AppleMusicSwiftUI
//
//  Created by Игорь Николаев on 06.04.2023.
//

import SwiftUI

struct RadioModelStation: Identifiable {
    var id = UUID()
    var category: String
    var description: String
    var icon: String

    init() {
        self.category = ""
        self.icon = ""
        self.description = ""
    }

    init(category: String, description: String, icon: String) {
        self.category = category
        self.icon = icon
        self.description = description
    }
}

struct RadioModelCategory: Identifiable {
    var id = UUID()
    var category: String
    var color: Color

    init() {
        self.category = ""
        self.color = .clear
    }

    init(category: String, color: Color) {
        self.category = category
        self.color = color
    }
}
