//
//  TabBarController.swift
//  SpotifyClone
//
//  Created by Alexis Orellano on 3/4/21.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupVCs()
    }
    
    private func setupVCs() {
        let vc1 = HomeController()
        let vc2 = SearchController()
        let vc3 = LibraryController()
        
        vc1.title = "Browse"
        vc2.title = "Search"
        vc3.title = "Library"
        
        vc1.navigationItem.largeTitleDisplayMode = .always
        vc2.navigationItem.largeTitleDisplayMode = .always
        vc3.navigationItem.largeTitleDisplayMode = .always
        
        let nav1 = UINavigationController(rootViewController: vc1)
        let nav2 = UINavigationController(rootViewController: vc2)
        let nav3 = UINavigationController(rootViewController: vc3)
        
        nav1.tabBarItem = UITabBarItem(title: "Home", image: nil, tag: 1)
        nav2.tabBarItem = UITabBarItem(title: "Search", image: nil, tag: 2)
        nav3.tabBarItem = UITabBarItem(title: "Library", image: nil, tag: 3)
        
        nav1.navigationBar.prefersLargeTitles = true
        nav2.navigationBar.prefersLargeTitles = true
        nav3.navigationBar.prefersLargeTitles = true
        
        setViewControllers([nav1, nav2, nav3], animated: false)
        
    }
}
