//
//  LibraryView.swift
//  AppleMusicSwiftUI
//
//  Created by Игорь Николаев on 02.04.2023.
//

import SwiftUI

struct LibraryView: View {
    var body: some View {
        VStack {
            TabbarMusic()
        }
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
