//
//  RadioStations.swift
//  AppleMusicSwiftUI
//
//  Created by Игорь Николаев on 05.04.2023.
//

import SwiftUI

struct RadioStations: View {
    let columns = [GridItem(.fixed(350))]
    @State var radioManager: RadioManager
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVGrid(columns: columns, alignment: .leading, spacing: 10, pinnedViews: [], content: {
                Section(header: Text("Станции")
                    .font(Font.title2)
                    .bold()
                    .frame(alignment: .leading)
                ) {
                    ForEach(radioManager.model.flatMap { $0.modelStation }) { station in
                        RadioStationCell(cell: station)
                    }
                }
            })
            .padding(20)
        }
    }
}

struct RadioStationsPreviews: PreviewProvider {
    static var previews: some View {
        RadioStations(radioManager: RadioManager())
    }
}
