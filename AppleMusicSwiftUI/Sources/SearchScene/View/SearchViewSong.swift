//
//  SearchSongView.swift
//  AppleMusicSwiftUI
//
//  Created by Игорь Николаев on 18.04.2023.
//
//
import SwiftUI

struct SearchViewSong: View {
    @StateObject var viewModel = SearchSong()

    var body: some View {
        NavigationView {

            List(viewModel.songs) { song in
                    Text(song.collectionName)
                }
                .searchable(text: $viewModel.search, prompt: "Артисты, песни, альбомы и др.")
                .navigationTitle("Поиск")
                .listStyle(.plain)
            }
        }
    }

struct SearchSongView_Previews: PreviewProvider {
    static var previews: some View {
        SearchViewSong()
    }
}
