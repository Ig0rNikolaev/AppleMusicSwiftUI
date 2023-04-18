//
//  SearchSong.swift
//  AppleMusicSwiftUI
//
//  Created by Игорь Николаев on 18.04.2023.
//

import Foundation
import Combine

class SearchSong: ObservableObject {
    @Published var search: String = ""
    @Published var songs = [Song]()
    var subscription = Set<AnyCancellable>()
    let networkManager = SearchNetworkManager()

    init() {
        $search
            .dropFirst()
            .sink { [weak self] term in
                self?.songs = []
                self?.searchSong(term)
            }.store(in: &subscription)
    }

    func searchSong(_ search: String) {
        guard !search.isEmpty else { return }

        networkManager.fetchSongs(scheme: "https",
                                   host: "itunes.apple.com",
                                   path: "/search",
                                   term: search,
                                   entity: "song",
                                   limit: 10) { [weak self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let results):
                    for song in results.results {
                        self?.songs.append(song)
                    }
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
        }
    }
}

