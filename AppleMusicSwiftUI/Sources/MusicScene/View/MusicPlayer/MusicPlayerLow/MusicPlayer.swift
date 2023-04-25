//
//  MusicPlayer.swift
//  AppleMusicSwiftUI
//
//  Created by Игорь Николаев on 02.04.2023.
//
import SwiftUI
import AVKit

struct MusicPlayer: View {
    @State private var isPlaying = false
    @State var audioPlayer: AVAudioPlayer?

    @Binding var sheet: Bool
    var animation: Namespace.ID

    var body: some View {
        HStack(spacing: 0) {
            ZStack {
                if !sheet {
                    MusicPlayerImage()
                        .matchedGeometryEffect(id: "ALBUM", in: animation)
                }
            }
            .frame(width: 45, height: 45)

            Text("8 Mile")
                .lineLimit(1)
                .padding(.horizontal, 15)

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
            .font(.title2)
            .onAppear {
                do {
                    let sound = Bundle.main.path(forResource: "song", ofType: "mp3")
                    self.audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound ?? " "))
                } catch {
                    print("Error initializing AVAudioPlayer: \(error.localizedDescription)")
                }
            }
        }
        .foregroundColor(.black)
        .padding(.horizontal)
        .contentShape(Rectangle())
        .onTapGesture {
            withAnimation(.easeInOut(duration: 0.3)) {
                sheet = true
            }
        }
    }
}

struct MusicPlayerPreviews: PreviewProvider {
    static var previews: some View {
       MusicContentView()
    }
}


