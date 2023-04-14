//
//  TabbarMusic.swift
//  AppleMusicSwiftUI
//
//  Created by Игорь Николаев on 01.04.2023.
//

import SwiftUI

struct MusicContentView: View {

    var body: some View {
        ZStack(alignment: .bottom) {
            TabView {
                createTabWay(modul: MusicButton(), name: "Слушать", icon: "play.circle.fill")
                createTabWay(modul: Text("Обзор"), name: "Обзор", icon: "square.grid.2x2.fill")
                createTabWay(modul: RadioContetnt(), name: "Радио", icon: "dot.radiowaves.left.and.right")
                createTabWay(modul: Text("Медиатека"), name: "Медиатека", icon: "music.note.house.fill")
                createTabWay(modul: SearchView(), name: "Поиск", icon: "magnifyingglass")
            }
            .accentColor(.red)
            .onAppear() {
                UITabBar.appearance().backgroundColor = .systemGray6
            }
            MusicPlayer()
                .offset(y: -109)
                .padding(.bottom, -90)
        }
    }

    func createTabWay<T: View>(modul: T, name: String, icon: String) -> some View {
        modul
            .tabItem {
                Text(name)
                Image(systemName: icon)
            }
    }
}

struct MusicContentViewPreviews: PreviewProvider {
    static var previews: some View {
        MusicContentView()
    }
}
