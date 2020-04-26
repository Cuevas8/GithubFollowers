//
//  UITableView+Ext.swift
//  GithubFollowers
//
//  Created by Bryan Cuevas on 4/26/20.
//  Copyright © 2020 bryanCuevas. All rights reserved.
//

import UIKit


extension UITableView {
    
    func reloadDateOnMainThread() {
        DispatchQueue.main.async { self.reloadData() }
    }
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
}
