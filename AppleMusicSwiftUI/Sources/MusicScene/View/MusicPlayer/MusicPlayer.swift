//
//  Player.swift
//  AppleMusicSwiftUI
//
//  Created by Игорь Николаев on 02.04.2023.
//

import SwiftUI

struct MusicPlayer: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                HStack {
                    HStack(spacing: 10) {
                        MusicPlayerImage()
                        Text("8 Mile")
                    }
                    Spacer()

                    HStack(spacing: 20) {
                        Button(action: {}) {
                            Image(systemName: "play.fill")
                        }
                        Button(action: {}) {
                            Image(systemName: "forward.fill")
                        }
                    }
                    .font(.title2)
                    .foregroundColor(.black)
                }
                .padding(.horizontal, 20)
                .frame(width: UIScreen.main.bounds.width, height: 60)
                .background(Color(.systemGray6))
            }

            Rectangle()
                .fill(Color(.systemGray2))
                .frame(width: UIScreen.main.bounds.width, height: 0.5)
        }
        .ignoresSafeArea(edges: .all)
    }
}

struct MusicPlayerPreviews: PreviewProvider {
    static var previews: some View {
        MusicPlayer()
    }
}
