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
    @State private var currentTime: TimeInterval = 0
    @State private var duration: TimeInterval = 0
    @State private var volume: Float = 0.0

    var body: some View {
        GeometryReader { geometry in
            let spacing = geometry.size.height * 0.04

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
                    Slider(value: $currentTime, in: 0...duration)
                        .accentColor(.secondary)
                    HStack {
                        Text(formatTimeInterval(currentTime))
                        Spacer()
                        Text(formatTimeInterval(duration - currentTime))
                    }
                    .foregroundColor(.secondary)
                    .font(.callout)
                    .fontWeight(.semibold)
                }

                Spacer()

                HStack(alignment: .center, spacing: 60) {
                    Button(action: {
                        audioPlayer?.play()
                        isPlaying = true
                    }) {
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

                    Button(action: {
                        audioPlayer?.currentTime = duration
                        audioPlayer?.pause()
                        isPlaying = false
                    }) {
                        Image(systemName: "forward.fill")
                            .font(.system(size: 35))
                    }
                }
                .foregroundColor(.white)
                .onAppear {
                    do {
                        let sound = Bundle.main.path(forResource: "song", ofType: "mp3")
                        self.audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound ?? " "))
                        self.duration = audioPlayer?.duration ?? 0
                    } catch {
                        print("Error initializing AVAudioPlayer: \(error.localizedDescription)")
                    }
                }

                Spacer()

                VStack(spacing: 45) {
                    HStack {
                        Image(systemName: "speaker.fill")
                            .foregroundColor(.secondary)

                        Slider(value: $volume)
                            .accentColor(.secondary)

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

    func formatTimeInterval(_ interval: TimeInterval) -> String {
        let formatter = DateComponentsFormatter()
        formatter.allowedUnits = [.minute, .second]
        formatter.zeroFormattingBehavior = .pad
        return formatter.string(from: interval) ?? " "
    }
}

struct MusicPlayerScreen_Previews: PreviewProvider {
    static var previews: some View {
        MusicContentView()
    }
}
