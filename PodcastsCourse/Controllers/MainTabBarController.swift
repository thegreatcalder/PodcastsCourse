//
//  MainTabBarController.swift
//  PodcastsCourse
//
//  Created by Steven Calder on 8/18/18.
//  Copyright © 2018 Steven Calder. All rights reserved.
//

import Foundation
import UIKit

class MainTabBarController: UITabBarController {
    
    private let backgroundColor = #colorLiteral(red: 0.9243923611, green: 0.9243923611, blue: 0.9243923611, alpha: 1)
    private let primaryColor = #colorLiteral(red: 0.3942291737, green: 0.2650392354, blue: 0.4596067667, alpha: 1)
    private let secondaryColor = #colorLiteral(red: 0.7022109032, green: 0.6811594963, blue: 0.7431696057, alpha: 1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = backgroundColor
        tabBar.tintColor = primaryColor
        tabBar.barTintColor = backgroundColor
        
        
        
        let appearance = UINavigationBar.appearance()
        
        appearance.titleTextAttributes = [NSAttributedStringKey.foregroundColor:UIColor.white]
        
        viewControllers = [
            generateNavViewController(with: PodcastsSearchController(), with: "Search", and: #imageLiteral(resourceName: "SearchIcon")),
            generateNavViewController(with: ViewController(), with: "Favorites", and: #imageLiteral(resourceName: "PlayIcon")),
            generateNavViewController(with: ViewController(), with: "Downloads", and: #imageLiteral(resourceName: "FolderIcon"))
        ]
    }
    
    //MARK:- Helper functions
    
    fileprivate func generateNavViewController(with rootViewController: UIViewController, with title: String, and icon: UIImage) -> UIViewController {
        let navigationController = UINavigationController(rootViewController: rootViewController)
        rootViewController.navigationItem.title = title
        navigationController.navigationBar.prefersLargeTitles = true
        navigationController.tabBarItem.title = title
        navigationController.tabBarItem.image = icon
        return navigationController
        
    }
    
}
