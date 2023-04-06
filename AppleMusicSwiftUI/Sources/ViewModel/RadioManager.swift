//
//  RadioManager.swift
//  AppleMusicSwiftUI
//
//  Created by Игорь Николаев on 06.04.2023.
//

import SwiftUI

class RadioManager: ObservableObject {
    @Published var model: [RadioModels] = [RadioModels(modelStation: [RadioModelStation(category: "Поп", description: "Описание", icon: "square.and.arrow.up.fill"),
                                                                      RadioModelStation(category: "Рок", description: "Описание", icon: "person"),
                                                                      RadioModelStation(category: "Рэп", description: "Описание", icon: "person"),
                                                                      RadioModelStation(category: "Хип-Хоп", description: "Описание", icon: "square.and.arrow.up.fill"),
                                                                      RadioModelStation(category: "Джаз", description: "Описание", icon: "person"),
                                                                      RadioModelStation(category: "Фанк", description: "Описание", icon: "person"),
                                                                      RadioModelStation(category: "Соул", description: "Описание", icon: "person")
                                                                     ],
                                                       modelCategory: [RadioModelCategory(category: "Поп", color: .pink),
                                                                       RadioModelCategory(category: "Рок", color: .orange),
                                                                       RadioModelCategory(category: "Рэп", color: .red),
                                                                       RadioModelCategory(category: "Классика", color: .blue),
                                                                       RadioModelCategory(category: "Хиты", color: .indigo),
                                                                       RadioModelCategory(category: "Хип-Хоп", color: .green),
                                                                       RadioModelCategory(category: "Джаз", color: .yellow)
                                                                      ]
                                                      )]

}
                                                                                        










