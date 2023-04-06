//
//  RadioImage.swift
//  AppleMusicSwiftUI
//
//  Created by Игорь Николаев on 05.04.2023.
//

import SwiftUI

struct RadioImage: View {
    let image: RadioModelStation
    
    var body: some View {
        Image(image.icon)
            .resizable()
            .frame(width: 115,
                   height: 115)
            .cornerRadius(5)
            .shadow(radius: 5)
    }
}

struct RadioImagePreviews: PreviewProvider {
    static var previews: some View {
        RadioImage(image: RadioModelStation())
    }
}
