//
//  SearchView.swift
//  AppleMusicSwiftUI
//
//  Created by Игорь Николаев on 18.04.2023.
//

import SwiftUI

struct SearchView: View {
    @State var search: String = ""
    @State var searchModel = SearchModel.appleMusic
    @StateObject var albumList = SearchAlbum()
    @StateObject var songList = SearchSong()

    var body: some View {
        NavigationView {
            VStack{
                Picker("Media picker", selection: $searchModel) {
                    ForEach(SearchModel.allCases) { type in
                        Text(type.nameCategory())
                            .tag(type)
                    }
                }
                .pickerStyle(.segmented)
                .padding(.horizontal)

                switch searchModel {
                case .appleMusic:
                    if search.isEmpty {
                        SearchCategory()
                            .padding(.top)
                    } else {
                        SearchViewAlbum(viewModel: albumList, search: $search)
                            .onAppear {
                                albumList.search = search
                            }
                            .padding(.bottom, 80)
                    }

                case .yourMedia:
                    if search.isEmpty {
                        UIKitSearchView()
                            .padding(.top)
                    } else {
                        SearchViewSong(viewModel: songList, search: $search)
                            .onAppear {
                                songList.search = search
                            }
                            .padding(.bottom, 80)
                    }
                }
            }
            .navigationTitle("Поиск")
        }
        .searchable(text: $search, prompt: "Артисты, песни, альбомы и др.")
        .onChange(of: search) { newValue in
            switch searchModel {
            case .appleMusic:
                albumList.search = newValue
            case .yourMedia:
                songList.search = newValue
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
