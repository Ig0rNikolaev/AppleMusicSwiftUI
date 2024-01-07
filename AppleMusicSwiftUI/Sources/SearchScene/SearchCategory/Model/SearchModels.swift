//
//  Models.swift
//  AppleMusicSwiftUI
//
//  Created by Игорь Николаев on 24.04.2023.
//

import SwiftUI

struct SearchModelDetail: Identifiable {
    var id = UUID()
    var description: String
    var icon: String
    var descriptionHeader: String
    var descriptionGenre: String

    init() {
        self.description = ""
        self.icon = ""
        self.descriptionHeader = ""
        self.descriptionGenre = ""
    }

    init(description: String, icon: String, descriptionHeader: String, descriptionGenre: String) {
        self.description = description
        self.icon = icon
        self.descriptionHeader = descriptionHeader
        self.descriptionGenre = descriptionGenre
    }
}

struct SearchGenreCategory: Identifiable {
    var id = UUID()
    var icon: String
    var descriptionHeader: String
    var descriptionGenre: String

    init() {
        self.icon = ""
        self.descriptionHeader = ""
        self.descriptionGenre = ""
    }

    init(icon: String, descriptionHeader: String, descriptionGenre: String) {
        self.icon = icon
        self.descriptionHeader = descriptionHeader
        self.descriptionGenre = descriptionGenre
    }
}

struct SearchDetailSections: Identifiable  {
    var id = UUID()
    let nameSection: String
    var genreCategory: [SearchGenreCategory]
}

struct SearchModelCategory: Identifiable {
    var id = UUID()
    var description: String
    var icon: String
    var сolor: Color

    init() {
        self.description = ""
        self.icon = ""
        self.сolor = .clear
    }
    
    init(description: String, icon: String, color: Color) {
        self.description = description
        self.icon = icon
        self.сolor = color
    }
}
