//
//  GFTabBarController.swift
//  GithubFollowers
//
//  Created by Bryan Cuevas on 4/25/20.
//  Copyright © 2020 bryanCuevas. All rights reserved.
//

import UIKit

class GFTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        UITabBar.appearance().tintColor = .systemGreen
        viewControllers = [createSearchNavigationController(), createFavoritesNavigationController()]
    }
    
    func createSearchNavigationController() -> UINavigationController {
           let searchVC = SearchVC()
           searchVC.title = "Search"
           searchVC.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
           
           return UINavigationController(rootViewController: searchVC)
       }
       
       func createFavoritesNavigationController() -> UINavigationController {
           let favoritesVC = FavoritesListVC()
           favoritesVC.title = "Favorites"
           favoritesVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
           
           return UINavigationController(rootViewController: favoritesVC)
       }
}
