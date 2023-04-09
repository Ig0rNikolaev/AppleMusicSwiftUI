//
//  Player.swift
//  AppleMusicSwiftUI
//
//  Created by Игорь Николаев on 02.04.2023.
//

import SwiftUI
import AVKit

struct MusicPlayer: View {
    @State private var isPlaying = false
    @State var audioPlayer: AVAudioPlayer?
    
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
                        Button(action: {
                            if isPlaying {
                                audioPlayer?.pause()
                            } else {
                                audioPlayer?.play()
                            }
                            isPlaying.toggle()
                        }) {
                            Image(systemName: isPlaying ? "pause.fill" : "play.fill")
                        }
                        Button(action: {}) {
                            Image(systemName: "forward.fill")
                        }
                    }
                    .onAppear {
                        do {
                            let sound = Bundle.main.path(forResource: "song", ofType: "mp3")
                            self.audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound ?? " "))
                        } catch {
                            print("Error initializing AVAudioPlayer: \(error.localizedDescription)")
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
