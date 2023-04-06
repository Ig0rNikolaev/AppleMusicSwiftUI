//
//  RadioCategorys.swift
//  AppleMusicSwiftUI
//
//  Created by Игорь Николаев on 05.04.2023.
//

import SwiftUI

struct RadioCategorys: View {
    @State var radioManager: RadioManager
    let rows = [GridItem(.fixed(300))]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: rows, spacing: 10) {
                ForEach(radioManager.model.flatMap { $0.modelCategory }) { station in
                    VStack(alignment: .leading) {
                        RadioCategoryHeader(header: station)
                        RadioCategoryCell(cell: station)
                    }
                }
            }
            .padding(20)
        }
    }
}

struct RadioCategorysPreviews: PreviewProvider {
    static var previews: some View {
        RadioCategorys(radioManager: RadioManager())
    }
}
