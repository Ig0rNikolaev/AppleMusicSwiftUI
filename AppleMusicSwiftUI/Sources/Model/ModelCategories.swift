//
//  ModelCategories.swift
//  AppleMusicSwiftUI
//
//  Created by Игорь Николаев on 01.04.2023.
//

import SwiftUI

struct Model: Identifiable, Hashable {
    var id = UUID()
    var category: String
    var icon: String
    init(category: String, icon: String) {
        self.category = category
        self.icon = icon
    }

    static func addCategoris() -> [Model] {
        [Model(category: "Плейлисты", icon: "music.note.list"),
         Model(category: "Артисты", icon: "music.mic"),
         Model(category: "Альбомы", icon: "square.stack"),
         Model(category: "Песни", icon: "music.note"),
         Model(category: "Телешоу и фильмы", icon: "sparkles.tv"),
         Model(category: "Видеоклипы", icon: "music.note.tv"),
         Model(category: "Жанры", icon: "guitars"),
         Model(category: "Сборники", icon: "person.2.crop.square.stack"),
         Model(category: "Авторы", icon: "music.quarternote.3"),
         Model(category: "Загружено", icon: "arrow.down.circle"),
         Model(category: "Домашняя коллекция", icon: "music.note.house"),
        ]
    }
}
