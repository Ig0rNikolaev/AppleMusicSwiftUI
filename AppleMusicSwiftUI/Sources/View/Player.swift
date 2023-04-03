//
//  Player.swift
//  AppleMusicSwiftUI
//
//  Created by Игорь Николаев on 02.04.2023.
//

import SwiftUI

struct Player: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                HStack {
                    HStack(spacing: 20) {
                        Image("album")
                            .resizable()
                            .frame(width: 45,
                                   height: 45)
                            .cornerRadius(5)
                            .shadow(radius: 5)
                        Text("8 Mile")
                            .frame(width: 50)
                    }
                    Spacer()

                    HStack(spacing: 20) {
                        Image(systemName: "play.fill")
                        Image(systemName: "forward.fill")
                    }
                    .font(.title2)
                }
                .padding(.horizontal, 20)
                .frame(width: UIScreen.main.bounds.width, height: 60)
                .background(Color(.systemGray6).opacity(1.0))
            }

            Rectangle()
                .fill(Color(.systemGray3))
                .frame(width: UIScreen.main.bounds.width, height: 0.5)
        }
        .ignoresSafeArea(edges: .all)
    }
}


struct PlayerPreviews: PreviewProvider {
    static var previews: some View {
        Player()
    }
}

