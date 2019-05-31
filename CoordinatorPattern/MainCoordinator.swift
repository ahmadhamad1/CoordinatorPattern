//
//  MainCoordinator.swift
//  CoordinatorPattern
//
//  Created by Ahmad J. Hamad on 5/31/19.
//  Copyright © 2019 Ahmad J. Hamad @sci3ntist. All rights reserved.
//

import Foundation
import UIKit

class MainCoordinator:Coordinator {
    
  var viewControllers: [UIViewController]? = nil
  var navigationController: UINavigationController? = nil
    
  var homeCoodinator:Coordinator? = nil
    
    
  func start()
  {
    viewControllers = [UIViewController]()
    
    homeCoodinator?.navigationController?.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 0)
    viewControllers?.append((homeCoodinator?.navigationController)!)
  }
}
