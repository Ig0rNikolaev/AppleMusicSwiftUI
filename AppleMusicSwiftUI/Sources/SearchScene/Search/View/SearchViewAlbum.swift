//
//  SearchView.swift
//  AppleMusicSwiftUI
//
//  Created by Игорь Николаев on 14.04.2023.
//

import SwiftUI

struct SearchViewAlbum: View {
    @ObservedObject var viewModel: SearchAlbum
    @Binding var search: String
    
    var body: some View {
        List {
            ForEach(viewModel.albums.prefix(3)) { album in
                HStack {
                    Image(systemName: "magnifyingglass")
                    Text(album.collectionName)
                        .onTapGesture {
                            self.search = album.collectionName
                        }
                }
            }
            ForEach(viewModel.albums) { album in
                HStack(spacing: 20) {
                    AsyncImage(url: URL(string: album.artworkUrl60))
                        .cornerRadius(5)
                        .shadow(radius: 5)
                    VStack(alignment: .leading) {
                        Text(album.collectionName)
                        HStack {
                            Text(album.collectionType)
                            Text("·")
                            Text(album.artistName)
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

struct SearchViewAlbum_Previews: PreviewProvider {
    @State static var searchText = ""

    static var previews: some View {
        SearchViewAlbum(viewModel: SearchAlbum(), search: $searchText)
    }
}
