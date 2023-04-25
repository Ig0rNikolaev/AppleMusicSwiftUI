//
//  SearchCategoryList.swift
//  AppleMusicSwiftUI
//
//  Created by Игорь Николаев on 24.04.2023.
//

import SwiftUI

struct SearchCategoryList: View {
    @State var searchManager: SearchManager
    let rows = [GridItem()]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: rows, spacing: 10) {
                ForEach(searchManager.modelSearchDetail) { category in
                    VStack(alignment: .leading) {
                        SearchCategoryHeader(header: category)
                        SearchCategoryCell(cell: category)
                    }
                }
            }
            .padding(20)
        }
    }
}

struct SearchCategoryList_Previews: PreviewProvider {
    static var previews: some View {
        SearchCategoryList(searchManager: SearchManager())
    }
}
