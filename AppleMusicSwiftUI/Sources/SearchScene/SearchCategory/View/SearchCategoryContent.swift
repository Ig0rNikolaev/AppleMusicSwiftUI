//
//  SearchCategoryContent.swift
//  AppleMusicSwiftUI
//
//  Created by Игорь Николаев on 24.04.2023.
//

import SwiftUI

struct SearchCategoryContent: View {
    private let searchManager = SearchManager()

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    SearchCategoryList(searchManager: searchManager)
                    GenreList(searchManager: searchManager)
                }
            }
            .navigationTitle("Главное")
        }
    }
}

struct SearchCategoryContent_Previews: PreviewProvider {
    static var previews: some View {
        SearchCategoryContent()
    }
}
