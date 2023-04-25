//
//  MusicPlayerFull.swift
//  AppleMusicSwiftUI
//
//  Created by Игорь Николаев on 20.04.2023.
//

import SwiftUI

struct BottomSheet: View {
    @State private var animateConten: Bool = false
    @State private var offsetY: CGFloat = 0
    @Binding var sheet: Bool
    var animation: Namespace.ID

    var body: some View {
        GeometryReader {
            let size = $0.size
            let safeArea = $0.safeAreaInsets

            ZStack {
                RoundedRectangle(cornerRadius: animateConten ? deviceCornerRadius : 0, style: .continuous)
                    .fill(.ultraThickMaterial)
                    .overlay(content: {
                        RoundedRectangle(cornerRadius: animateConten ? deviceCornerRadius : 0, style: .continuous)
                            .fill(Color("BG"))
                    })
                    .overlay(alignment: .top) {
                        MusicPlayer(sheet: $sheet, animation: animation)
                            .opacity(animateConten ? 0 : 1)
                    }
                    .matchedGeometryEffect(id: "VIEW", in: animation)

                VStack(spacing: 15) {
                    Capsule()
                        .fill(.gray)
                        .frame(width: 40, height: 5)

                    MusicPlayerImage()
                    .matchedGeometryEffect(id: "ALBUM", in: animation)
                    .padding()

                    MusicPlayerScreen()
                }
                .padding(.top, safeArea.top + (safeArea.bottom == 0 ? 10 : 0))
                .padding(.bottom, safeArea.bottom == 0 ? 10 : safeArea.bottom)
                .padding(.horizontal, 25)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            }
            .contentShape(Rectangle())
            .offset(y: offsetY)
            .gesture(
                DragGesture()
                    .onChanged({ value in
                        let translationY = value.translation.height
                        offsetY = (translationY > 0 ? translationY : 0)
                    }).onEnded({ value in
                        withAnimation(.easeInOut(duration: 0.3)) {
                            if offsetY > size.height * 0.4 {
                                sheet = false
                                animateConten = false
                            } else {
                                offsetY = .zero
                            }
                        }
                    })
            )
            .ignoresSafeArea(.container, edges: .all)
        }
        .onAppear {
            withAnimation(.easeInOut(duration: 0.35)) {
                animateConten = true
            }
        }
        .environment(\.colorScheme, .dark)
    }
}
