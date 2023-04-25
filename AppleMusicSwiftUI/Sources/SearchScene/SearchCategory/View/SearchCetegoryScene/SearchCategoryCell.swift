//
//  SearchCategoryCell.swift
//  AppleMusicSwiftUI
//
//  Created by Игорь Николаев on 24.04.2023.
//

import SwiftUI

struct SearchCategoryCell: View {
    let cell: SearchModelDetail

    var body: some View {
        Image(cell.icon)
            .resizable()
            .frame(width: 350, height: 250)
            .cornerRadius(7)
            .shadow(radius: 7)
            .overlay(
                Text(cell.description)
                    .foregroundColor(Color.white)
                    .padding(10)
                    .font(.system(size: 12))
                    .bold()
                    .lineLimit(2),
                alignment: .bottomLeading
            )
    }
}

struct SearchCategoryCellPreviews: PreviewProvider {
    static var previews: some View {
        SearchCategoryCell(cell: SearchModelDetail())
    }
}
