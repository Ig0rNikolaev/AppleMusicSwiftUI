//
//  MusicPlayerScreen.swift
//  AppleMusicSwiftUI
//
//  Created by Игорь Николаев on 20.04.2023.
//

import SwiftUI
import AVKit

struct MusicPlayerScreen: View {
    @State private var isPlaying = false
    @State var audioPlayer: AVAudioPlayer?

    var body: some View {
        GeometryReader {
            let size = $0.size
            let spacing = size.height * 0.04

            VStack(spacing: spacing) {

                HStack(alignment: .center, spacing: 15) {
                    VStack(alignment: .leading) {
                        Text("8 Mile")
                            .font(.title2)
                            .bold()
                            .fontWeight(.semibold)
                        Text("Eminem")
                            .foregroundColor(.secondary)
                            .fontWeight(.semibold)
                            .font(.title2)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)

                    Button {

                    } label: {
                        Image(systemName: "ellipsis")
                            .foregroundColor(.white)
                            .padding(12)
                            .background {
                                Circle()
                                    .fill(.ultraThinMaterial)
                                    .environment(\.colorScheme, .light)
                            }
                    }
                }

                VStack(spacing: 10) {
                    Capsule()
                        .fill(.ultraThinMaterial)
                        .environment (\.colorScheme, .light)
                        .frame(height: 7)
                        .padding(.top, spacing)

                    HStack {
                        Text("0:00")
                        Spacer()
                        Text("-0:32")
                    }
                    .foregroundColor(.secondary)
                    .font(.callout)
                    .fontWeight(.semibold)
                }

                Spacer()

                HStack(alignment: .center, spacing: 60) {
                    Button(action: {}) {
                        Image(systemName: "backward.fill")
                            .font(.system(size: 35))
                    }

                    Button(action: {
                        if isPlaying {
                            audioPlayer?.pause()
                        } else {
                            audioPlayer?.play()
                        }
                        isPlaying.toggle()
                    }) {
                        Image(systemName: isPlaying ? "pause.fill" : "play.fill")
                            .font(.system(size: 55))
                    }

                    Button(action: {}) {
                        Image(systemName: "forward.fill")
                            .font(.system(size: 35))
                    }
                }
                .foregroundColor(.white)
                .onAppear {
                    do {
                        let sound = Bundle.main.path(forResource: "song", ofType: "mp3")
                        self.audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound ?? " "))
                    } catch {
                        print("Error initializing AVAudioPlayer: \(error.localizedDescription)")
                    }
                }

                Spacer()

                VStack(spacing: 45) {
                    HStack {
                        Image(systemName: "speaker.fill")
                            .foregroundColor(.secondary)

                        Capsule()
                            .fill(.ultraThinMaterial)
                            .environment (\.colorScheme, .light)
                            .frame(height: 7)

                        Image(systemName: "speaker.wave.3.fill")
                            .foregroundColor(.secondary)
                    }

                    HStack(alignment: .center, spacing: 100) {
                        Button(action: {}) {
                            Image(systemName: "quote.bubble")
                        }

                        Button(action: {}) {
                            Image(systemName: "airplayaudio")
                        }

                        Button(action: {}) {
                            Image(systemName: "list.bullet")
                        }
                    }
                    .foregroundColor(.secondary)
                    .font(.title3)
                }
            }
        }
    }
}


struct MusicPlayerScreen_Previews: PreviewProvider {
    static var previews: some View {
        MusicContentView()
    }
}
