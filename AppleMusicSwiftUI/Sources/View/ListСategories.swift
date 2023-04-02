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
    
    var body: some View {
        VStack(alignment: .center) {
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
                .listStyle(.plain)
                .accentColor(.red)
                .environment(\.editMode, Binding<EditMode>(.constant(.active)))
            }
        }
    }

struct ListСategoriesPreviews: PreviewProvider {
    static var previews: some View {
        ListСategories()
    }
}
