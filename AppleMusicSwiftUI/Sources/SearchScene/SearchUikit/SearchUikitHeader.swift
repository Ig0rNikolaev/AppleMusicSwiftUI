//
//  SearchUikitHeader.swift
//  AppleMusicSwiftUI
//
//  Created by Игорь Николаев on 25.04.2023.
//

import SwiftUI
import UIKit

class SearchUikitHeader: UICollectionReusableView {
    static let identifier = "SearchUikitHeader"

    //: MARK: - UI Elements

    lazy var title: UILabel = {
        let title = UILabel()
        title.textColor = .black
        title.font = UIFont.systemFont(ofSize: 22, weight: .bold)
        title.translatesAutoresizingMaskIntoConstraints = false
        return title
    }()

    // MARK: - Initializers

    override init(frame: CGRect) {
        super.init(frame: frame)
        clipsToBounds = true
        setupHierarchy()
        setupLayout()
    }

    required init?(coder: NSCoder) {
        fatalError()
    }

    // MARK: - Setup

    private func setupHierarchy() {
        addSubview(title)
    }

    private func setupLayout() {
        NSLayoutConstraint.activate([
            title.topAnchor.constraint(equalTo: topAnchor.self),
            title.leftAnchor.constraint(equalTo: leftAnchor.self, constant: 16)
        ])
    }
}
