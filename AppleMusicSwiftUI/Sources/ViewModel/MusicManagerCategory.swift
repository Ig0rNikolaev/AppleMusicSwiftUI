//
//  ManagerCategory.swift
//  AppleMusicSwiftUI
//
//  Created by Игорь Николаев on 03.04.2023.
//

import SwiftUI

class MusicManagerCategory: ObservableObject {
    @Published var models: [MusicCategoryModel] = [
        MusicCategoryModel(category: "Плейлисты", icon: "music.note.list", id: UUID()),
        MusicCategoryModel(category: "Артисты", icon: "music.mic", id: UUID()),
        MusicCategoryModel(category: "Альбомы", icon: "square.stack", id: UUID()),
        MusicCategoryModel(category: "Песни", icon: "music.note", id: UUID()),
        MusicCategoryModel(category: "Телешоу и фильмы", icon: "sparkles.tv", id: UUID()),
        MusicCategoryModel(category: "Видеоклипы", icon: "music.note.tv", id: UUID()),
        MusicCategoryModel(category: "Жанры", icon: "guitars", id: UUID()),
        MusicCategoryModel(category: "Сборники", icon: "person.2.crop.square.stack", id: UUID()),
        MusicCategoryModel(category: "Авторы", icon: "music.quarternote.3", id: UUID()),
        MusicCategoryModel(category: "Загружено", icon: "arrow.down.circle", id: UUID()),
        MusicCategoryModel(category: "Домашняя коллекция", icon: "music.note.house", id: UUID())
    ]

    func move(indices: IndexSet, newOffset: Int) {
        models.move(fromOffsets: indices, toOffset: newOffset)
    }
}
