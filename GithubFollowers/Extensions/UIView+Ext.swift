//
//  UIView+Ext.swift
//  GithubFollowers
//
//  Created by Bryan Cuevas on 4/26/20.
//  Copyright © 2020 bryanCuevas. All rights reserved.
//

import UIKit

extension UIView {
    
    func addSubViews(_ views: UIView...) {
        for view in views { addSubview(view) }
    }
}
