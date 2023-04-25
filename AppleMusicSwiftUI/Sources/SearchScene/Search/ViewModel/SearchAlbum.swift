//
//  SearchAlbumManager.swift
//  AppleMusicSwiftUI
//
//  Created by Игорь Николаев on 14.04.2023.
//

import Foundation
import Combine

class SearchAlbum: ObservableObject {
    @Published var search: String = ""
    @Published var albums = [Album]()
    let networkManager = SearchNetworkManager()
    var subscription = Set<AnyCancellable>()

    init() {
        $search
            .dropFirst()
            .removeDuplicates()
            .sink { [weak self] term in
                self?.albums = []
                self?.searchAlbum(term)
            }.store(in: &subscription)
    }

    func searchAlbum(_ search: String) {
        guard !search.isEmpty else { return }

        networkManager.fetchAlbums(scheme: "https",
                                   host: "itunes.apple.com",
                                   path: "/search",
                                   term: search,
                                   entity: "album",
                                   limit: 10) { [weak self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let results):
                    for album in results.results {
                        self?.albums.append(album)
                    }
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
        }
    }
}
