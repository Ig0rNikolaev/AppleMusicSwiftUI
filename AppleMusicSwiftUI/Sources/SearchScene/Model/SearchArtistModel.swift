//
//  SearchArtistModel.swift
//  AppleMusicSwiftUI
//
//  Created by Игорь Николаев on 14.04.2023.
//

import Foundation

// MARK: - SearchArtistModel

struct SearchArtistModel: Codable {
    let resultCount: Int
    let results: [Artist]
}

// MARK: - Result

struct Artist: Codable {
    let wrapperType, artistType, artistName: String
    let artistLinkURL: String
    let artistID: Int
    let amgArtistID: Int?
    let primaryGenreName: String
    let primaryGenreID: Int

    enum CodingKeys: String, CodingKey {
        case wrapperType, artistType, artistName
        case artistLinkURL = "artistLinkUrl"
        case artistID = "artistId"
        case amgArtistID = "amgArtistId"
        case primaryGenreName
        case primaryGenreID = "primaryGenreId"
    }
}
