//
//  RadioImage.swift
//  AppleMusicSwiftUI
//
//  Created by Игорь Николаев on 05.04.2023.
//

import SwiftUI

struct RadioImage: View {
    var body: some View {
        Image(systemName: "person")
            .resizable()
            .frame(width: 115,
                   height: 115)
            .cornerRadius(5)
            .shadow(radius: 5)
            .background(Color.blue)
    }
}

struct RadioImagePreviews: PreviewProvider {
    static var previews: some View {
        RadioImage()
    }
}
