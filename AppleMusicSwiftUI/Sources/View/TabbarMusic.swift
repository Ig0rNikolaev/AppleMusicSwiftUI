//
//  TabbarMusic.swift
//  AppleMusicSwiftUI
//
//  Created by Игорь Николаев on 01.04.2023.
//

import SwiftUI

struct TabbarMusic: View {

    var body: some View {
        TabView {
            TitleView()
                .tabItem {
                    Text("Слушать")
                    Image(systemName: "play.circle.fill")
                }
            createTabBar(name: "Обзор", icon: "square.grid.2x2.fill")
            createTabBar(name: "Радио", icon: "dot.radiowaves.left.and.right")
            createTabBar(name: "Медиатека", icon: "music.note.house.fill")
            createTabBar(name: "Поиск", icon: "magnifyingglass")
        }
        .accentColor(.red)
        .font(.title2)
        .bold()
        .onAppear() {
            UITabBar.appearance().backgroundColor = .systemGray6
        }
    }

    func createTabBar(name: String, icon: String) -> some View {
        Text(name)
            .tabItem {
                Text(name)
                Image(systemName: icon)
            }
    }
}

struct TabbarMusic_Previews: PreviewProvider {
    static var previews: some View {
        TabbarMusic()
    }
}
