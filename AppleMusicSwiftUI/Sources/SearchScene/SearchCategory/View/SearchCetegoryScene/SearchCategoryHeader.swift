//
//  SearchCategoryHeader.swift
//  AppleMusicSwiftUI
//
//  Created by Игорь Николаев on 24.04.2023.
//

import SwiftUI

struct SearchCategoryHeader: View {
    let header: SearchModelDetail

    var body: some View {
        VStack(alignment: .leading) {
            Text("ИЗБРАННЫЙ ПЛЕЙЛИСТ")
                .font(.system(size: 10))
                .foregroundColor(.secondary)
                .bold()

            Text(header.descriptionHeader)
                .font(.title2)

            Text(header.descriptionGenre)
                .font(.title2)
                .foregroundColor(.secondary)
        }
    }
}

struct SearchCategoryHeaderPreviews: PreviewProvider {
    static var previews: some View {
        SearchCategoryHeader(header: SearchModelDetail())
    }
}
