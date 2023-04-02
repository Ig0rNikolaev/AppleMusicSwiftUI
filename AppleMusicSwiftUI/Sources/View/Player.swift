//
//  Player.swift
//  AppleMusicSwiftUI
//
//  Created by Игорь Николаев on 02.04.2023.
//

import SwiftUI

struct Player: View {
    var body: some View {
        HStack(spacing: 120)  {

            HStack {
                Image(systemName: "person")
                Text("Sing for a moment")
            }

            HStack(spacing: 10) {
                Image(systemName: "play.fill")
                Image(systemName: "forward.fill")
            }
        }
        .padding()
        .frame(width: 400, height: 55)
        .edgesIgnoringSafeArea(.all)
        .background(Color.red)
    }

}

struct PlayerPreviews: PreviewProvider {
    static var previews: some View {
        Player()
    }
}
