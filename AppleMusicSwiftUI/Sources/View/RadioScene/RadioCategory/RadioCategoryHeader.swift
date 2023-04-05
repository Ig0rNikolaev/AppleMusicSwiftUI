//
//  RadioHeader.swift
//  AppleMusicSwiftUI
//
//  Created by Игорь Николаев on 05.04.2023.
//

import SwiftUI

struct RadioCategoryHeader: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("ИЗБРАННАЯ РАДИОСТАНЦИЯ")
                .font(.system(size: 10))
                .foregroundColor(.secondary)
                .bold()
            
            Text("Легкий поп")
                .font(.title2)

            Text("Станция Apple Music")
                .font(.title2)
                .foregroundColor(.secondary)
        }
    }
}

struct RadioCategoryHeaderPreviews: PreviewProvider {
    static var previews: some View {
        RadioCategoryHeader()
    }
}
