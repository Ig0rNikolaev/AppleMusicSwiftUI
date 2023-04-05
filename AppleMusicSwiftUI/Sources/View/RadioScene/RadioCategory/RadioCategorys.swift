//
//  RadioCategorys.swift
//  AppleMusicSwiftUI
//
//  Created by Игорь Николаев on 05.04.2023.
//

import SwiftUI

struct RadioCategorys: View {
    let rows = [GridItem(.fixed(300))]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: rows, spacing: 10) {
                ForEach(0..<10) { index in
                    VStack(alignment: .leading) {
                        RadioCategoryHeader()
                        Rectangle()
                            .frame(width: 350)
                            .cornerRadius(7)
                            .foregroundColor(.blue)
                            .overlay(
                                Text("Легкий поп")
                                    .foregroundColor(.white)
                                    .padding(10)
                                    .font(.title2)
                                    .bold(),
                                alignment: .topLeading
                            )
                            .overlay(
                                Text("Легкий поп")
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
            .padding(.horizontal, 20)
        }
    }
}

struct RadioCategorysPreviews: PreviewProvider {
    static var previews: some View {
        RadioCategorys()
    }
}

