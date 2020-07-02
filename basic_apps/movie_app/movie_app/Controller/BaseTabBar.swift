//
//  BaseTabBar.swift
//  movie_app
//
//  Created by Lucas Albuquerque on 01/07/20.
//  Copyright © 2020 Lucas Geek. All rights reserved.
//

import UIKit

class BaseTabBar: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewControllers = [
            criaNavController(viewController: FilmeVC(), titulo: "Filmes", icone: "filme"),
            criaNavController(viewController: ExplorarVC(), titulo: "Explorar", icone: "explorar"),
            criaNavController(viewController: UIViewController(), titulo: "Favoritos", icone: "favorito"),
        ]
        
        tabBar.tintColor = UIColor(red: 253/255, green: 89/255, blue: 35/255, alpha: 1)
        tabBar.unselectedItemTintColor = UIColor.darkGray
        tabBar.barTintColor = UIColor.white
        tabBar.isTranslucent = false
    }
    
    func criaNavController(viewController: UIViewController, titulo: String, icone: String) -> UIViewController {
        let navController = UINavigationController(rootViewController: viewController)
        navController.navigationBar.barTintColor = UIColor.white
        navController.navigationBar.prefersLargeTitles = true
        navController.navigationBar.tintColor = UIColor(red: 253/255, green: 89/255, blue: 35/255, alpha: 1)
        navController.navigationBar.shadowImage = UIImage()
        
        viewController.navigationItem.title = titulo
        viewController.tabBarItem.title = titulo
        viewController.tabBarItem.image = UIImage(named: icone)
        
        return navController
    }
}
