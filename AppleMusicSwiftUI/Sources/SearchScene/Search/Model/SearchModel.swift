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

struct Song: Codable, Identifiable {
    let kind: String
    let id: Int
    let trackName: String
    let artistName: String
    let artworkUrl60: String

    enum CodingKeys: String, CodingKey {
        case kind
        case trackName
        case id = "trackId"
        case artistName
        case artworkUrl60
    }
}

// MARK: - SearchAlbumModel

struct SearchAlbumModel: Codable {
    let resultCount: Int
    let results: [Album]
}

struct Album: Codable, Identifiable {
    let collectionType: String
    let id: Int
    let artistName, collectionName: String
    let artworkUrl60: String

    enum CodingKeys: String, CodingKey {
        case collectionType
        case id = "collectionId"
        case artistName, collectionName
        case artworkUrl60
    }
}

// MARK: - SearchModel

enum SearchModel: String, Identifiable, CaseIterable {
    case appleMusic
    case yourMedia

    var id: String {
        self.rawValue
    }

    func nameCategory() -> String {
        switch self {
        case .appleMusic:
            return "Apple Music"
        case .yourMedia:
            return "Ваша Медиатека"
        }
    }
}
