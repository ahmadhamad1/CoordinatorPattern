//
//  MainTabBarController.swift
//  CoordinatorPattern
//
//  Created by Ahmad J. Hamad on 5/31/19.
//  Copyright © 2019 Ahmad J. Hamad @sci3ntist. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {

  var coordinator:Coordinator? = nil
    
  override func viewDidLoad()
  {
    super.viewDidLoad()
    
    coordinator?.start()
    
    viewControllers = coordinator?.viewControllers
  }

}
