//
//  listСategories.swift
//  AppleMusicSwiftUI
//
//  Created by Игорь Николаев on 01.04.2023.
//

import SwiftUI

struct ListСategories: View {
    @State private var models = Model.addCategoris()
    @State private var selection = Set<UUID>()
    @State private var isEditing = false

    var body: some View {
        NavigationView {
            List(selection: $selection) {
                ForEach(models, id: \.id) { model in
                    HStack {
                        Image(systemName: model.icon)
                            .foregroundColor(.red)
                        Text(model.category)
                    }
                }
                .onMove { models.move(fromOffsets: $0, toOffset: $1) }
            }
            .listStyle(.grouped)
            .toolbar {
                Button(action: {
                    isEditing.toggle()
                }) {
                    Text(isEditing ? "Готово" : "Править")
                    }
                }
                .accentColor(.red)
                .environment(\.editMode, isEditing ? .constant(.active) : .constant(.inactive))
            }
        }
    }

struct ListСategoriesPreviews: PreviewProvider {
    static var previews: some View {
        ListСategories()
    }
}

