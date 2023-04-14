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
    var subscription = Set<AnyCancellable>()
    let networkManager = SearchNetworkManager()

    init() {
        $search
            .dropFirst()
            .sink { [weak self] term in
                self?.albums = []
                self?.searchAlbum(term)
            }.store(in: &subscription)
    }

    func searchAlbum(_ search: String) {
        guard !search.isEmpty else { return }
        let url = networkManager.buildURL(scheme: "https", host: "itunes.apple.com", path: "/search", term: search, entity: "album", limit: 10)

        networkManager.getData(type: SearchAlbumModel.self, url) { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let results):
                    for album in results.results {
                        self.albums.append(album)
                    }
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
        }
    }
}
