//
//  LibraryView.swift
//  AppleMusicSwiftUI
//
//  Created by Игорь Николаев on 01.04.2023.
//

import SwiftUI

struct MusicButton: View {
    @State private var isEditing = false
    
    var body: some View {
        NavigationView {
            VStack {
                if isEditing {
                    MusicCategory(managerCategory: MusicManagerCategory())
                } else {
                    MusicTitle()
                }
            }
            .navigationTitle("Медиатека")
            .toolbar {
                Button(isEditing ? "Готово" : "Править" ) {
                    isEditing.toggle()
                }
                .accentColor(.red)
            }
        }
    }
}

struct LibraryViewPreviews: PreviewProvider {
    static var previews: some View {
        MusicButton()
    }
}
