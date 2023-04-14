//
//  SearchView.swift
//  AppleMusicSwiftUI
//
//  Created by Игорь Николаев on 14.04.2023.
//

import SwiftUI

struct SearchView: View {
    @StateObject var viewModel = SearchAlbum()

    var body: some View {
        NavigationView {

            List(viewModel.albums) { album in
                Text(album.collectionName)
            }
            .searchable(text: $viewModel.search, prompt: "Артисты, песни, альбомы и др.")
            .navigationTitle("Поиск")
            .listStyle(.plain)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
