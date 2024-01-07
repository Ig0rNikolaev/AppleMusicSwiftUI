//
//  RadioContetnt.swift
//  AppleMusicSwiftUI
//
//  Created by Игорь Николаев on 06.04.2023.
//

import SwiftUI

struct RadioContetnt: View {
    private let radioManager = RadioManager()

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    RadioCategorys(radioManager: radioManager)
                    RadioStations(radioManager: radioManager)
                }
            }
            .navigationTitle("Радио")
            .padding(.bottom, 30)
        }
    }
}

struct RadioContetnt_Previews: PreviewProvider {
    static var previews: some View {
        RadioContetnt()
    }
}
