//
//  RadioStationCell.swift
//  AppleMusicSwiftUI
//
//  Created by Игорь Николаев on 05.04.2023.
//

import SwiftUI

struct RadioStationCell: View {
    let cell: RadioModelStation
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack(spacing: 20)  {
                RadioImage(image: cell)
                RadioStationDescription(description: cell)
            }
            HStack {
                Spacer()
                Rectangle()
                    .fill(Color(.systemGray2))
                    .frame(width: 225, height: 0.5)
                    .padding(.bottom)
            }
        }
    }
}

struct RadioStationCellPreviews: PreviewProvider {
    static var previews: some View {
        RadioStationCell(cell: RadioModelStation())
    }
}
