//
//  LocationCalloutView.swift
//  Guelph Simplified
//
//  Created by Ryan Nguyen on 2024-03-23.
//

import Foundation
import UIKit

class LocationCalloutView: UIView {
    private let titleLabel = UILabel()
    private let navigateButton = UIButton()

    var onNavigate: (() -> Void)?

    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }

    private func commonInit() {
        backgroundColor = .white
        layer.cornerRadius = 8
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.1
        layer.shadowRadius = 5

        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        addSubview(titleLabel)

        navigateButton.translatesAutoresizingMaskIntoConstraints = false
        navigateButton.setTitle("Navigate", for: .normal)
        navigateButton.backgroundColor = .systemIndigo
        navigateButton.layer.cornerRadius = 5
        addSubview(navigateButton)

        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
            
            navigateButton.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8),
            navigateButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
            navigateButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
            navigateButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8),
            navigateButton.heightAnchor.constraint(equalToConstant: 44)
        ])

        navigateButton.addTarget(self, action: #selector(didTapNavigate), for: .touchUpInside)
    }

    func configure(with title: String, onNavigate: @escaping () -> Void) {
        titleLabel.text = title
        self.onNavigate = onNavigate
    }

    @objc private func didTapNavigate() {
        onNavigate?()
    }
}
