//
//  CustomTabBarVC.swift
//  SunWorld
//
//  Created by Aigerim on 04.08.17.
//  Copyright © 2017 Aigerim Janaliyeva. All rights reserved.
//

import Foundation
import UIKit

class CustomTabBarVC: UITabBarController {


    override func viewDidLoad() {
        super.viewDidLoad()
        
        let feedController = FeedController()
        let navController = UINavigationController(rootViewController: feedController)
        navController.title = "Обсуждения"
        navController.tabBarItem.image = UIImage(named: "conversation")
        
        
        let chatVC = MessagesController()//ChatViewController()
        let nav1Controller = UINavigationController(rootViewController: chatVC)
        nav1Controller.title = "Диалоги"
        nav1Controller.tabBarItem.image = UIImage(named: "plane")
        
        let myAcc = MyAccountViewController()
        let nav2Controller = UINavigationController(rootViewController: myAcc)
        nav2Controller.title = "Мой аккаунт"
        nav2Controller.tabBarItem.image = UIImage(named: "plane")
        
        viewControllers = [navController, nav1Controller, nav2Controller]
        
    }






}
