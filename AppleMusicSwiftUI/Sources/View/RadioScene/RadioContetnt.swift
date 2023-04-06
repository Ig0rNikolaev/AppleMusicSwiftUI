//
//  RadioContetnt.swift
//  AppleMusicSwiftUI
//
//  Created by Игорь Николаев on 06.04.2023.
//

import SwiftUI

struct RadioContetnt: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    RadioCategorys(radioManager: RadioManager())
                    RadioStations(radioManager: RadioManager())
                }
            }
            .navigationTitle("Радио")
        }
    }
}

struct RadioContetnt_Previews: PreviewProvider {
    static var previews: some View {
            RadioContetnt()
        }
    }
