//
//  RadioHeader.swift
//  AppleMusicSwiftUI
//
//  Created by Игорь Николаев on 05.04.2023.
//

import SwiftUI

struct RadioCategoryHeader: View {
    let header: RadioModelCategory
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("ИЗБРАННАЯ РАДИОСТАНЦИЯ")
                .font(.system(size: 10))
                .foregroundColor(.secondary)
                .bold()
            
            Text(header.category)
                .font(.title2)

            Text("Станция Apple Music")
                .font(.title2)
                .foregroundColor(.secondary)
        }
    }
}

struct RadioCategoryHeaderPreviews: PreviewProvider {
    static var previews: some View {
        RadioCategoryHeader(header: RadioModelCategory())
    }
}
