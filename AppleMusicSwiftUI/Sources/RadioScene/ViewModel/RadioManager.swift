//
//  RadioManager.swift
//  AppleMusicSwiftUI
//
//  Created by Игорь Николаев on 06.04.2023.
//

import SwiftUI

class RadioManager: ObservableObject {
    @Published var modelStation: [RadioModelStation] = [
        RadioModelStation(category: "Хип-хоп и R&B", description: "Идеальные биты и рифмы", icon: "hip-hop"),
        RadioModelStation(category: "Рок", description: "Гении гитарного звука", icon: "rock"),
        RadioModelStation(category: "Ретро", description: "Ретро настроение", icon: "retro"),
        RadioModelStation(category: "Поп", description: "Поп хиты", icon: "pop"),
        RadioModelStation(category: "Хаус", description: "Электронная медитация", icon: "house"),
        RadioModelStation(category: "Классика", description: "Выдающиеся образцы жанра", icon: "classic"),
        RadioModelStation(category: "Джаз", description: "Лучшее из мира джаза", icon: "jazz")
    ]

    @Published var modelCategory: [RadioModelCategory] = [
        RadioModelCategory(category: "Поп-музыка", color: .pink),
        RadioModelCategory(category: "Чилаут", color: .orange),
        RadioModelCategory(category: "Хип-хоп", color: .red),
        RadioModelCategory(category: "Классика рока", color: .blue),
        RadioModelCategory(category: "Ретро", color: .indigo),
        RadioModelCategory(category: "Альтернатива", color: .green),
        RadioModelCategory(category: "Хаус", color: .yellow)
    ]
}
