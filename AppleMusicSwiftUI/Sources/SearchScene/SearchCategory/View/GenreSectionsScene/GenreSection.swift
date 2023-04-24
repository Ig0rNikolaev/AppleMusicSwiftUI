//
//  GenreSection.swift
//  AppleMusicSwiftUI
//
//  Created by Игорь Николаев on 24.04.2023.
//

import SwiftUI

struct Sections: View {
    let title: String
    var body: some View {
        HStack {
            Section(header: Text(title)) {
                Button {
                } label: {
                    Image(systemName: "chevron.right")
                        .foregroundColor(.secondary)
                }
            }
        }
        .font(.system(size: 22))
        .fontWeight(.bold)
        .padding(.leading)
    }
}
