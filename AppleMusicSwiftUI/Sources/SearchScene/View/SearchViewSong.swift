//
//  SearchSongView.swift
//  AppleMusicSwiftUI
//
//  Created by Игорь Николаев on 18.04.2023.
//
//

import SwiftUI

struct SearchViewSong: View {
    @ObservedObject var viewModel: SearchSong
    
    var body: some View {
        List {
            ForEach(viewModel.songs.prefix(3)) { name in
                HStack {
                    Image(systemName: "magnifyingglass")
                    Text(name.collectionName)
                }
            }

            ForEach(viewModel.songs) { song in
                HStack(spacing: 20) {
                    AsyncImage(url: URL(string: song.artworkUrl60))
                        .cornerRadius(5)
                        .shadow(radius: 5)
                    VStack(alignment: .leading) {
                        Text(song.collectionName)
                        HStack {
                            Text(song.kind)
                            Text("·")
                            Text(song.artistName)
                            Spacer()
                        }
                        .foregroundColor(.secondary)
                    }
                    .lineLimit(1)
                }
            }
        }
        .listStyle(.plain)
    }
}

struct SearchSongView_Previews: PreviewProvider {
    static var previews: some View {
        SearchViewSong(viewModel: SearchSong())
    }
}
