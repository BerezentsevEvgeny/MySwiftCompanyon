//
//  TabBar Custom.swift
//  MySwiftCompanyon
//
//  Created by Евгений Березенцев on 13.08.2021.
//

import Foundation

class CustomTabBar: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let bar1 = createTabBaerController(vc: SearchVC(), title: "Search", image: #imageLiteral(resourceName: "search"))
        let bar2 = createTabBaerController(vc: FavoritesVC(), title: "Favorites Actors", image: #imageLiteral(resourceName: "favourite"))
        let bar3 = createTabBaerController(vc: WatchlistVC(), title: "My Watchlist", image: #imageLiteral(resourceName: "bookmark"))
        viewControllers = [bar1, bar2, bar3]
    }
    
    
    
    func createTabBaerController(vc: UIViewController, title: String, image: UIImage) -> UINavigationController {
        vc.navigationItem.title = title
        let navController = UINavigationController(rootViewController: vc)
        navController.title = title
        navController.tabBarItem.image = image
        return navController
    }
}
