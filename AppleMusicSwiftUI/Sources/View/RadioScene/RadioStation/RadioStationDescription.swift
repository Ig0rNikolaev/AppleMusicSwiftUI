//
//  RadioStationDescription.swift
//  AppleMusicSwiftUI
//
//  Created by Игорь Николаев on 05.04.2023.
//

import SwiftUI

struct RadioStationDescription: View {
    let description: RadioModelStation

    var body: some View {
        VStack(alignment: .leading) {
            Text(description.category)
                .font(.title3)

            Text(description.description)
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
    }
}

struct RadioStationDescriptionPreviews: PreviewProvider {
    static var previews: some View {
        RadioStationDescription(description: RadioModelStation())
    }
}
