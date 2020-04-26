//
//  GFEmptyStateView.swift
//  GithubFollowers
//
//  Created by Bryan Cuevas on 4/18/20.
//  Copyright © 2020 bryanCuevas. All rights reserved.
//

import UIKit

class GFEmptyStateView: UIView {
    
    let messageLabel = GFTitleLabel(textAlignment: .center, fontSize: 28)
    let logoImageView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(message: String) {
        self.init(frame: .zero)
        messageLabel.text = message
    }
    
    private func configure() {
        configureMessageLabel()
        configureLogoImageView()

    }
    
    private func configureMessageLabel() {
        addSubview(messageLabel)
        
        messageLabel.numberOfLines = 3
        messageLabel.textColor = .secondaryLabel
        
        let messageLabelCenterYConstant: CGFloat = DeviceTypes.isiPhoneSE || DeviceTypes.isiPhone8Zoomed ? -80 : -150
        let messageLabelCenterYConstraint = messageLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: messageLabelCenterYConstant)
        messageLabelCenterYConstraint.isActive = true
        
        NSLayoutConstraint.activate([
        messageLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 40),
        messageLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -40),
        messageLabel.heightAnchor.constraint(equalToConstant: 200)
        ])
    }
    
    private func configureLogoImageView() {
        addSubview(logoImageView)

        logoImageView.image = Images.emptyStateLogo
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
   
        let logoBottomConstant: CGFloat = DeviceTypes.isiPhoneSE || DeviceTypes.isiPhone8Zoomed ? 80 : 40
        let logoImageViewBottomConstraint = logoImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: logoBottomConstant)
        logoImageViewBottomConstraint.isActive = true
        
        NSLayoutConstraint.activate([
            logoImageView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1.3),
            logoImageView.heightAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1.3),
            logoImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 170),
        ])
    }
}
