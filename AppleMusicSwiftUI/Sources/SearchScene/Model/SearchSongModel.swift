//
//  SearchSongModel.swift
//  AppleMusicSwiftUI
//
//  Created by Игорь Николаев on 14.04.2023.
//

import Foundation

// MARK: - SearchSongModel

struct SearchSongModel: Codable {
    let resultCount: Int
    let results: [Song]
}

// MARK: - Result

// MARK: - Result
struct Song: Codable, Identifiable {
    let kind: String
    let id: Int
    let artistName, collectionName: String
    let artworkUrl60: String

    enum CodingKeys: String, CodingKey {
        case kind
        case id = "trackId"
        case artistName, collectionName
        case artworkUrl60
    }
}
