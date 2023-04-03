//
//  TabbarMusic.swift
//  AppleMusicSwiftUI
//
//  Created by Игорь Николаев on 01.04.2023.
//

import SwiftUI

struct AppleMusicContentView: View {

    var body: some View {
        ZStack(alignment: .bottom) {
            TabView {
                ButtonView()
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
            .onAppear() {
                UITabBar.appearance().backgroundColor = .systemGray6
            }
            Player()
                .offset(y: -109)
                .padding(.bottom, -90)
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

struct AppleMusicContentViewPreviews: PreviewProvider {
    static var previews: some View {
        AppleMusicContentView()
    }
}