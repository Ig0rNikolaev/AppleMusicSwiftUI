//
//  View+Extension.swift
//  AppleMusicSwiftUI
//
//  Created by Игорь Николаев on 20.04.2023.
//

import SwiftUI

extension View {
    var deviceCornerRadius: CGFloat {
        let key = "displayCornerRadius"
        if let screen = (UIApplication.shared.connectedScenes.first as?
                         UIWindowScene)?.windows.first?.screen {
            if let cornerRadius = screen.value(forKey: key) as? CGFloat {
                return cornerRadius
            }
            return 0
        }
        return 0
    }
}
