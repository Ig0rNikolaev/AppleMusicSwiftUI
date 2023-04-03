//
//  PlayerImage.swift
//  AppleMusicSwiftUI
//
//  Created by Игорь Николаев on 03.04.2023.
//

import SwiftUI

struct PlayerImage: View {
    var body: some View {
        Image("album")
            .resizable()
            .frame(width: 45,
                   height: 45)
            .cornerRadius(5)
            .shadow(radius: 5)
    }
}

struct PlayerImagePreviews: PreviewProvider {
    static var previews: some View {
        PlayerImage()
    }
}
