//
//  HomeScreenCell.swift
//  Friends-programmatically
//
//  Created by Boris Ofon on 11/28/22.
//

import UIKit

class HomeScreenCell: UITableViewCell {
    
    let nameLabel = UILabel()
    let emailLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        cellStyle()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

extension HomeScreenCell {
    func cellStyle() {
        // name Label
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.textAlignment = .center
        nameLabel.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        nameLabel.adjustsFontForContentSizeCategory = true
        
        // email label
        emailLabel.translatesAutoresizingMaskIntoConstraints = false
        emailLabel.textAlignment = .center
        emailLabel.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        emailLabel.adjustsFontForContentSizeCategory = true
        
    }
    
    
    func layout()  {
        contentView.addSubview(nameLabel)
        contentView.addSubview(emailLabel)
        
        // name label
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalToSystemSpacingBelow: contentView.topAnchor, multiplier: 1),
            nameLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor)
            
        ])
        
        //email label
        NSLayoutConstraint.activate([
            emailLabel.topAnchor.constraint(equalToSystemSpacingBelow: nameLabel.bottomAnchor, multiplier: 1),
            emailLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor)
        ])
        
    }
}
