//
//  TodayCollectionViewCell.swift
//  Weather-Group3
//
//  Created by t2023-m0059 on 2023/09/27.
//

import Foundation
import UIKit

class TodayCollectionViewCell: UICollectionViewCell {
    static let identifier = "todayCollectionViewCell"
    
    var labelSize: CGFloat = 14
    var stackViewSpacing: CGFloat = 2
    
    // MARK: - Properties
    lazy var timeLabel: UILabel = {
        let label = UILabel()
        
        label.font = UIFont.systemFont(ofSize: labelSize)
        
        return label
    }()
    
    lazy var iconLabel: UILabel = {
        let label = UILabel()
        
        label.font = UIFont.systemFont(ofSize: labelSize)
        
        return label
    }()
    
    lazy var tempLabel: UILabel = {
        let label = UILabel()

        label.font = UIFont.systemFont(ofSize: labelSize)
        
        return label
    }()
    
    lazy var weatherStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [timeLabel, iconLabel, tempLabel])
        stackView.spacing = stackViewSpacing
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    // MARK: Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUI()
        setConstraint()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Helpers
    private func setUI() {
        addSubview(weatherStackView)
    }
    
    private func setConstraint() {
        NSLayoutConstraint.activate([
            weatherStackView.topAnchor.constraint(equalTo: topAnchor),
            weatherStackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            weatherStackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            weatherStackView.trailingAnchor.constraint(equalTo: trailingAnchor),
        ])
    }
    
    func configure(with time: String, icon: String, temp: String) {
        timeLabel.text = time
        iconLabel.text = icon
        tempLabel.text = temp
    }
}
