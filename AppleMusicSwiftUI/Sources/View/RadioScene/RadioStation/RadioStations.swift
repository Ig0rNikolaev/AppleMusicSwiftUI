//
//  RadioStations.swift
//  AppleMusicSwiftUI
//
//  Created by Игорь Николаев on 05.04.2023.
//

import SwiftUI

struct RadioStations: View {
    let columns = [GridItem(.fixed(350))]

    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(0..<11) { index in
                    RadioStationCell()
                        .frame(width: 400)
                }
            }
        }
    }
}

struct RadioStationsPreviews: PreviewProvider {
    static var previews: some View {
        RadioStations()
    }
}
