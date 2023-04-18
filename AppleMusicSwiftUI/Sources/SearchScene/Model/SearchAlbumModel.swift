//
//  AlbumModel.swift
//  AppleMusicSwiftUI
//
//  Created by Игорь Николаев on 14.04.2023.
//

import Foundation

// MARK: - SearchAlbumModel

struct SearchAlbumModel: Codable {
    let resultCount: Int
    let results: [Album]
}

// MARK: - Result

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
