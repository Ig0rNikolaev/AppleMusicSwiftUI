//
//  UIkitSearchCell.swift
//  AppleMusicSwiftUI
//
//  Created by Игорь Николаев on 25.04.2023.
//

import SwiftUI
import UIKit

class UikitSearchCell: UICollectionViewCell {
    static let identifier = "Cell"

    let imagePhoto: UIImageView = {
        let image = UIImageView()
        image.layer.cornerRadius = 7
        image.clipsToBounds = true
        image.layer.shadowRadius = 7
        image.contentMode = .scaleAspectFill
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()

    let titleImage: UILabel = {
        let text = UILabel()
        text.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        text.textColor = .white
        text.numberOfLines = 1
        text.clipsToBounds = true
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHierarchy()
        setupLayout()
    }

    required init?(coder: NSCoder) {
        fatalError()
    }

    private func setupHierarchy() {
        contentView.addSubview(imagePhoto)
        imagePhoto.addSubview(titleImage)

    }

    private func setupLayout() {
        NSLayoutConstraint.activate([
            imagePhoto.leftAnchor.constraint(equalTo: contentView.leftAnchor),
            imagePhoto.rightAnchor.constraint(equalTo: contentView.rightAnchor),
            imagePhoto.topAnchor.constraint(equalTo: contentView.topAnchor),
            imagePhoto.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),

            titleImage.centerYAnchor.constraint(equalTo: imagePhoto.centerYAnchor, constant: 39),
            titleImage.leftAnchor.constraint(equalTo: imagePhoto.leftAnchor, constant: 10)
        ])
    }
}
