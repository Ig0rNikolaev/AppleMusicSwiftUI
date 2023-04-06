//
//  RadioCategoryCell.swift
//  AppleMusicSwiftUI
//
//  Created by Игорь Николаев on 06.04.2023.
//

import SwiftUI

struct RadioCategoryCell: View {
    let cell: RadioModelCategory
    var body: some View {
        VStack(alignment: .leading) {
            Rectangle()
                .frame(width: 350)
                .cornerRadius(7)
                .foregroundColor(cell.color)
                .overlay(
                    Text(cell.category)
                        .foregroundColor(.white)
                        .padding(10)
                        .font(.title2)
                        .bold(),
                    alignment: .topLeading
                )
                .overlay(
                    Text(cell.category)
                        .foregroundColor(Color.white.opacity(0.2))
                        .padding(10)
                        .font(.system(size: 150))
                        .bold()
                        .lineLimit(1)
                        .fixedSize(),
                    alignment: .bottomLeading
                )
        }
    }
}

struct RadioCategoryCellPreviews: PreviewProvider {
    static var previews: some View {
        RadioCategoryCell(cell: RadioModelCategory())
    }
}
