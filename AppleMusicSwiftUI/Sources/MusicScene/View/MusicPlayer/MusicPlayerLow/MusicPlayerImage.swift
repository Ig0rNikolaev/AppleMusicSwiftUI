//
//  PlayerImage.swift
//  AppleMusicSwiftUI
//
//  Created by Игорь Николаев on 03.04.2023.
//

import SwiftUI

struct MusicPlayerImage: View {
    var body: some View {
        GeometryReader {
            let size = $0.size
            
            Image("album")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .cornerRadius(7)
                .shadow(radius: 7)
                .frame(width: size.width, height: size.height)
        }
    }
}

struct PlayerImagePreviews: PreviewProvider {
    static var previews: some View {
        MusicPlayerImage()
    }
}
