//
//  SearchViewModels.swift
//  AppleMusicSwiftUI
//
//  Created by Игорь Николаев on 24.04.2023.
//

import Foundation

class SearchManager: ObservableObject {

    @Published var modelSearchDetail: [SearchModelDetail] = [
        SearchModelDetail(description: "Главные вехи рэпа на русском: от классики 90-х до новой школы.",
                            icon: "hiphopSearch",
                            descriptionHeader: "Хип-Хоп на русском: главное",
                            descriptionGenre: "Apple Music Хип-Хоп"),

        SearchModelDetail(description: "Неистовые, мощные и новаторские треки от главных героев жанра.",
                            icon: "rockSearch",
                            descriptionHeader: "Ностальгия по ню-металу",
                            descriptionGenre: "Apple Music Хард-рок"),

        SearchModelDetail(description: "Хиты прошлого которые никогда не наскучат.",
                            icon: "goldSearch",
                            descriptionHeader: "Золотой запас",
                            descriptionGenre: "Apple Music Поп"),
    ]

    @Published var modelDetailSections: [SearchDetailSections] = [
        SearchDetailSections(nameSection: "Альтернатива: главное", genreCategory: [
            SearchGenreCategory(icon: "indi", descriptionHeader: "Инди-хиты", descriptionGenre: "Apple Music Инди"),
            SearchGenreCategory(icon: "rockZone", descriptionHeader: "Рок-хедлайнеры", descriptionGenre: "Apple Music Рок"),
            SearchGenreCategory(icon: "indiR&B", descriptionHeader: "Инди-R&B: главное", descriptionGenre: "Apple Music R&B"),
        ]),

        SearchDetailSections(nameSection: "Хип-хоп: главное", genreCategory: [
            SearchGenreCategory(icon: "hiphopW", descriptionHeader: "Хип-Хоп Восток", descriptionGenre: "Apple Music R&B"),
            SearchGenreCategory(icon: "hiphopE", descriptionHeader: "Хип-Хоп Запад", descriptionGenre: "Apple Music R&B"),
            SearchGenreCategory(icon: "R&B", descriptionHeader: "R&B хиты", descriptionGenre: "Apple Music R&B"),
        ]),

        SearchDetailSections(nameSection: "Фанк и соул", genreCategory: [
            SearchGenreCategory(icon: "soul", descriptionHeader: "Классика соула", descriptionGenre: "Apple Music Соул"),
            SearchGenreCategory(icon: "funk", descriptionHeader: "Фанк: главное", descriptionGenre: "Apple Music Фанк"),
            SearchGenreCategory(icon: "neoSoul", descriptionHeader: "Неосоул: главное", descriptionGenre: "Apple Music R&B"),
        ])
    ]

    @Published var searchCategory: [SearchModelCategory] = [
        SearchModelCategory(description: "Главное", icon: "topS", color: .purple),
        SearchModelCategory(description: "Хиты", icon: "hitS", color: .green),
        SearchModelCategory(description: "Пространственное аудио", icon: "dolbyS", color: .mint),
        SearchModelCategory(description: "Чарты", icon: "chartS", color: .pink),
        SearchModelCategory(description: "Спокойствие", icon: "relaxS", color: .cyan),
        SearchModelCategory(description: "80-e", icon: "80S", color: .indigo),
        SearchModelCategory(description: "Электроника", icon: "danceS", color: .orange),
        SearchModelCategory(description: "Поп", icon: "popS", color: .yellow),
        SearchModelCategory(description: "Хип-хоп", icon: "rapS", color: .red),
        SearchModelCategory(description: "Классика", icon: "classicS", color: .blue)
    ]
}
