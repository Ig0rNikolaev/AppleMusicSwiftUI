//
//  ManagerCategory.swift
//  AppleMusicSwiftUI
//
//  Created by Игорь Николаев on 03.04.2023.
//

import SwiftUI

class MusicManagerCategory: ObservableObject {
    @Published var models: [MusicCategoryModel] = [
        MusicCategoryModel(category: "Плейлисты", icon: "music.note.list"),
        MusicCategoryModel(category: "Артисты", icon: "music.mic"),
        MusicCategoryModel(category: "Альбомы", icon: "square.stack"),
        MusicCategoryModel(category: "Песни", icon: "music.note"),
        MusicCategoryModel(category: "Телешоу и фильмы", icon: "sparkles.tv"),
        MusicCategoryModel(category: "Видеоклипы", icon: "music.note.tv"),
        MusicCategoryModel(category: "Жанры", icon: "guitars"),
        MusicCategoryModel(category: "Сборники", icon: "person.2.crop.square.stack"),
        MusicCategoryModel(category: "Авторы", icon: "music.quarternote.3"),
        MusicCategoryModel(category: "Загружено", icon: "arrow.down.circle"),
        MusicCategoryModel(category: "Домашняя коллекция", icon: "music.note.house")
    ]

    func move(indices: IndexSet, newOffset: Int) {
        models.move(fromOffsets: indices, toOffset: newOffset)
    }
}
