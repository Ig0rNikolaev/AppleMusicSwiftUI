//
//  TitleView.swift
//  AppleMusicSwiftUI
//
//  Created by Игорь Николаев on 01.04.2023.
//

import SwiftUI

struct MusicTitle: View {
    var body: some View {
        VStack(alignment: .center) {
            Text("Ищете свою музыку?")
                .font(.title2)
                .bold()
            Text("Здесь появится купленная Вами в\n iTunes Store музыка.")
                .font(.subheadline)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
        }
    }
}

struct MusicTitlePreviews: PreviewProvider {
    static var previews: some View {
        MusicTitle()
    }
}
