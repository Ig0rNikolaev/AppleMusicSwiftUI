//
//  UIKitSearchView.swift
//  AppleMusicSwiftUI
//
//  Created by Игорь Николаев on 25.04.2023.
//

import SwiftUI
import UIKit

struct UIKitSearchView: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> some UIViewController {
        return UIkitSearchController()
    }

    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {}
}
