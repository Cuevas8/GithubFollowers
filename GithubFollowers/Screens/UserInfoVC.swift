//
//  UserInfoVC.swift
//  GithubFollowers
//
//  Created by Bryan Cuevas on 4/19/20.
//  Copyright © 2020 bryanCuevas. All rights reserved.
//

import UIKit

class UserInfoVC: UIViewController {
    
    var userName: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemTeal
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissVC))
        
        navigationItem.rightBarButtonItem = doneButton
        
        print(userName)

    }
    
    @objc func dismissVC() {
        dismiss(animated: true, completion: nil)
    }
}
