//
//  RadioStationDescription.swift
//  AppleMusicSwiftUI
//
//  Created by Игорь Николаев on 05.04.2023.
//

import SwiftUI

struct RadioStationDescription: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Популярное")
                .font(.title2)
            Text("То, что слушают прямо сейчас.")
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
    }
}

struct RadioStationDescriptionPreviews: PreviewProvider {
    static var previews: some View {
        RadioStationDescription()
    }
}
