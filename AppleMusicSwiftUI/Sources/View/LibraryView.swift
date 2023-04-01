//
//  LibraryView.swift
//  AppleMusicSwiftUI
//
//  Created by Игорь Николаев on 01.04.2023.
//

import SwiftUI

struct LibraryView: View {
    var body: some View {
        NavigationView {
            TabbarMusic()
                .navigationTitle("Медиатека")
        }

    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
