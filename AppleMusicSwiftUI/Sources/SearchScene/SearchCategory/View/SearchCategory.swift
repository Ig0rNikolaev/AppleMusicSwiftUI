//
//  SearchCategory.swift
//  AppleMusicSwiftUI
//
//  Created by Игорь Николаев on 24.04.2023.
//

import SwiftUI

struct SearchCategory: View {
    let columns = [GridItem(.flexible(), spacing: 10),
                   GridItem(.flexible())
    ]

    let searchManager = SearchManager()

    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .leading) {
                Text("Поиск по категориям")
                    .font(.title2)
                    .bold()
                    .padding(.horizontal)
                LazyVGrid(columns: columns, spacing: 10) {
                    ForEach(searchManager.searchCategory) { category in
                        Image(category.icon)
                            .resizable()
                            .frame(height: 120)
                            .cornerRadius(10)
                            .colorMultiply(category.сolor.opacity(0.9))
                            .overlay(
                                Text(category.description)
                                    .foregroundColor(.white)
                                    .padding(10)
                                    .font(.system(size: 15))
                                    .bold(),
                                alignment: .bottomLeading
                            )
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}


struct SearchCategoryView_Previews: PreviewProvider {
    static var previews: some View {
        SearchCategory()
    }
}
