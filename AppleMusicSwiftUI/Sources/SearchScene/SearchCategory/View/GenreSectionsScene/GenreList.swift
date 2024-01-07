//
//  GenreList.swift
//  AppleMusicSwiftUI
//
//  Created by Игорь Николаев on 24.04.2023.
//

import SwiftUI

struct GenreList: View {
    let rows = [GridItem()]
    @State var searchManager = SearchManager()

    var body: some View {
        ScrollView {
            LazyVStack(alignment: .leading, spacing: 20) {
                ForEach(searchManager.modelDetailSections) { section in
                    Sections(title: section.nameSection)
                    ScrollView(.horizontal, showsIndicators: false) {
                        VStack {
                            LazyHGrid(rows: rows, spacing: 10) {
                                ForEach(section.genreCategory) { category in
                                    GenreCell(cell: category)
                                }
                            }
                            .padding(.horizontal)
                        }
                    }
                }
            }
        }
    }
}

struct GenreList_Previews: PreviewProvider {
    static var previews: some View {
        GenreList(searchManager: SearchManager())
    }
}
