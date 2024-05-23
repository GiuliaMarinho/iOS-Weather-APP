//
//  DailyForecastTableViewCell.swift
//  Weather App
//
//  Created by Giulia Marinho on 23/05/24.
//

import UIKit

class DailyForecastTableViewCell: UITableViewCell {
    static let identifier = "DailyForecastTableViewCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .clear
        selectionStyle = .none
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [weekDayLabel, iconImageView, minTemperatureLabel, maxTemperatureLabel])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16)
        stackView.spacing = 15
        return stackView
    }()
    
    lazy var weekDayLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .contrastColor
        label.text = "ter".uppercased()
        label.font = .systemFont(ofSize: 12, weight: .semibold)
        return label
    }()
    
    lazy var iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "cloudIcon")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    lazy var minTemperatureLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .contrastColor
        label.text = "min 25°C"
        label.font = .systemFont(ofSize: 12, weight: .semibold)
        return label
    }()
    
    lazy var maxTemperatureLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .contrastColor
        label.text = "max 25°C"
        label.font = .systemFont(ofSize: 12, weight: .semibold)
        return label
    }()
    
    func setupConstraints() {
        contentView.addSubview(stackView)
        stackView.setupConstraintsToParent(contentView)
        
        NSLayoutConstraint.activate([
            weekDayLabel.widthAnchor.constraint(lessThanOrEqualToConstant: 50)
        ])
    }
}
