//
//  TabBarViewController.swift
//  KP
//
//  Created by Бакдаулет Дуйсенбеков on 06.12.2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        view.backgroundColor = .systemBackground
           UITabBar.appearance().barTintColor = UIColor(red: 230/255, green: 187/255, blue: 148/255, alpha: 1)
           tabBar.tintColor = .orange
           setupVCs()

        // Do any additional setup after loading the view.
        func setupVCs() {
              viewControllers = [
                  createNavController(for: KitapViewController(), title: NSLocalizedString("Kitap", comment: ""), image: UIImage(systemName: "book")!),
                  createNavController(for: SecondViewController(), title: NSLocalizedString("About Us", comment: ""), image: UIImage(systemName: "house")!),
                  createNavController(for: FavoriteViewController(), title: NSLocalizedString("Favourite", comment: ""), image: UIImage(systemName: "heart")!)
              ]
          }
        
        
         func createNavController(for rootViewController: UIViewController,
                                                         title: String,
                                                         image: UIImage) -> UIViewController {
               let navController = UINavigationController(rootViewController: rootViewController)
               navController.tabBarItem.title = title
               navController.tabBarItem.image = image
               navController.navigationBar.prefersLargeTitles = false
               navController.navigationBar.isHidden = true
               rootViewController.navigationItem.title = title
               return navController
           }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
