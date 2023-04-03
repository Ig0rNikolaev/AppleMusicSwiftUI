//
//  ManagerCategory.swift
//  AppleMusicSwiftUI
//
//  Created by Игорь Николаев on 03.04.2023.
//

import SwiftUI

class ManagerCategory: ObservableObject {
    @Published var models: [CategoryModel] = [
        CategoryModel(category: "Плейлисты", icon: "music.note.list", id: UUID()),
        CategoryModel(category: "Артисты", icon: "music.mic", id: UUID()),
        CategoryModel(category: "Альбомы", icon: "square.stack", id: UUID()),
        CategoryModel(category: "Песни", icon: "music.note", id: UUID()),
        CategoryModel(category: "Телешоу и фильмы", icon: "sparkles.tv", id: UUID()),
        CategoryModel(category: "Видеоклипы", icon: "music.note.tv", id: UUID()),
        CategoryModel(category: "Жанры", icon: "guitars", id: UUID()),
        CategoryModel(category: "Сборники", icon: "person.2.crop.square.stack", id: UUID()),
        CategoryModel(category: "Авторы", icon: "music.quarternote.3", id: UUID()),
        CategoryModel(category: "Загружено", icon: "arrow.down.circle", id: UUID()),
        CategoryModel(category: "Домашняя коллекция", icon: "music.note.house", id: UUID())
    ]

    func move(indices: IndexSet, newOffset: Int) {
        models.move(fromOffsets: indices, toOffset: newOffset)
    }
}
