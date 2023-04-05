//
//  RadioStationCell.swift
//  AppleMusicSwiftUI
//
//  Created by Игорь Николаев on 05.04.2023.
//

import SwiftUI

struct RadioStationCell: View {
    var body: some View {
        VStack(alignment: .trailing) {
            HStack(alignment: .center, spacing: 20) {
                RadioImage()
                RadioStationDescription()
            }
            Rectangle()
                .fill(Color(.systemGray2))
                .frame(width: 230, height: 0.5)
        }
        .ignoresSafeArea(edges: .all)
    }
}

struct RadioStationCellPreviews: PreviewProvider {
    static var previews: some View {
        RadioStationCell()
    }
}
