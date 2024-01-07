//
//  ContentView.swift
//  AppleMusicSwiftUI
//
//  Created by Игорь Николаев on 29.03.2023.
//

import SwiftUI

struct MusicCategory: View {
    @StateObject var managerCategory: MusicManagerCategory
    @State private var selection = Set<UUID>()

    var body: some View {
        VStack(alignment: .center) {
            List(selection: $selection) {
                ForEach(managerCategory.models) { model in
                    HStack {
                        Image(systemName: model.icon)
                            .foregroundColor(.red)
                        Text(model.category)
                    }
                }
                .onMove(perform: { indexSet, newOffset in
                    managerCategory.move(indices: indexSet, newOffset: newOffset)
                })
            }
            .environment(\.editMode, Binding<EditMode>(.constant(.active)))
            .listStyle(.plain)
            .accentColor(.red)
        }
    }
}

struct MusicCategoryPreviews: PreviewProvider {
    static var previews: some View {
        MusicCategory(managerCategory: MusicManagerCategory())
    }
}
