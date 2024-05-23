//
//  HourlyForecastCollectionViewCell.swift
//  Weather App
//
//  Created by Giulia Marinho on 23/05/24.
//

import UIKit

class HourlyForecastCollectionViewCell: UICollectionViewCell {
    static let identifier = "HourlyForecastCollectionViewCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(stackView)
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [hourLabel, iconImageView, temperatureLabel])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 4
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8)
        stackView.layer.borderWidth = 1
        stackView.layer.borderColor = UIColor.contrastColor?.cgColor
        stackView.layer.cornerRadius = 20
        return stackView
    }()
    
    lazy var hourLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "13:00"
        label.textColor = .contrastColor
        label.font = .systemFont(ofSize: 10, weight: .semibold)
        label.textAlignment = .center
        return label
    }()
    
    lazy var iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "sunIcon")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    lazy var temperatureLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "25°C"
        label.textColor = .contrastColor
        label.font = .systemFont(ofSize: 14, weight: .semibold)
        label.textAlignment = .center
        return label
    }()
    
    func setupConstraints() {
        stackView.setupConstraintsToParent(contentView)
        iconImageView.heightAnchor.constraint(equalToConstant: 33).isActive = true
    }
}
