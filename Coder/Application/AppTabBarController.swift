//
//  AppTabBarController.swift
//  Coder
//
//  Created by 박예린 on 8/20/24.
//

import UIKit

class AppTabBarController: UITabBarController {
    
    private let homeViewController = UINavigationController(rootViewController: HomeViewController())
    private let myPageViewController = UINavigationController(rootViewController: MyPageViewController())

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        setViewControllers()
        configureTabBarItems()
    }
    
    private func setup() {
            let appearance = UITabBarAppearance()
            appearance.configureWithOpaqueBackground()
            tabBar.scrollEdgeAppearance = appearance
            view.backgroundColor = .systemBackground
            tabBar.backgroundColor = .systemBackground
//            tabBar.tintColor = .primary500
//            tabBar.unselectedItemTintColor = .primary500
        }
        
    private func setViewControllers() {
        homeViewController.navigationBar.isTranslucent = false
        homeViewController.navigationBar.backgroundColor = .systemBackground

        myPageViewController.navigationBar.isTranslucent = false
        myPageViewController.navigationBar.backgroundColor = .systemBackground
        setViewControllers(
            [homeViewController, myPageViewController],
            animated: true
        )
    }
    private func configureTabBarItems() {
        if let items = tabBar.items {
            items[0].selectedImage = UIImage(systemName: ImageSystemName.houseFill.rawValue)
            items[0].image = UIImage(systemName: ImageSystemName.house.rawValue)
            items[0].title = "Home"
            
            items[1].selectedImage = UIImage(systemName: ImageSystemName.messageFill.rawValue)
            items[1].image = UIImage(systemName: ImageSystemName.message.rawValue)
            items[1].title = "MyPage"
        }
    }
}
