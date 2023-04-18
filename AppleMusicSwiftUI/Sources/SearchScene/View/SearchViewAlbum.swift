//
//  SearchView.swift
//  AppleMusicSwiftUI
//
//  Created by Игорь Николаев on 14.04.2023.
//

import SwiftUI

struct SearchViewAlbum: View {
    @ObservedObject var viewModel: SearchAlbum
    
    var body: some View {
        NavigationView {
            
            List(viewModel.albums) { album in
                Text(album.collectionName)
            }
            .listStyle(.plain)
        }
    }
}

struct SearchViewAlbum_Previews: PreviewProvider {
    static var previews: some View {
        SearchViewAlbum(viewModel: SearchAlbum())
    }
}
