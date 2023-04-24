//
//  GenreCell.swift
//  AppleMusicSwiftUI
//
//  Created by Игорь Николаев on 24.04.2023.
//

import SwiftUI

struct GenreCell: View {
    let cell: SearchGenreCategory

    var body: some View {
        VStack(alignment: .leading) {
            Image(cell.icon)
                .resizable()
                .frame(width: 150,
                       height: 150)
                .cornerRadius(7)
                .shadow(radius: 7)

            VStack(alignment: .leading) {
                Text(cell.descriptionHeader)
                    .font(.system(size: 15))

                Text(cell.descriptionGenre)
                    .font(.system(size: 15))
                    .foregroundColor(.secondary)
            }
        }
    }
}
