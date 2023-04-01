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
            
            Text("Слушать")
                .tabItem {
                    Text("Слушать")
                    Image(systemName: "play.circle.fill")
                }

            Text("Обзор")
                .tabItem {
                    Text("Обзор")
                    Image(systemName: "square.grid.2x2.fill")
                }

            Text("Радио")
                .tabItem {
                    Text("Радио")
                    Image(systemName: "dot.radiowaves.left.and.right")
                }

            Text("Медиатека")
                .tabItem {
                    Text("Медиатека")
                    Image(systemName: "music.note.house.fill")
                }

            Text("Поиск")
                .tabItem {
                    Text("Поиск")
                    Image(systemName: "magnifyingglass")
                }
        }
        .accentColor(.red)
        .font(.title)
        .onAppear() {
            UITabBar.appearance().backgroundColor = .systemGray6
        }
    }
}

struct TabbarMusic_Previews: PreviewProvider {
    static var previews: some View {
        TabbarMusic()
    }
}
