//
//  SwinjectStoryboard+CoordinatorPattern.swift
//  CoordinatorPattern
//
//  Created by Ahmad J. Hamad on 5/31/19.
//  Copyright © 2019 Ahmad J. Hamad @sci3ntist. All rights reserved.
//

import Foundation
import UIKit
import SwinjectStoryboard



extension SwinjectStoryboard {
  
  /**
   *
   */
  @objc class func setup()
  {
    defaultContainer.storyboardInitCompleted(MainTabBarController.self) { r, vc in
      
      let mainCoordinator = r.resolve(MainCoordinator.self)
      vc.coordinator = mainCoordinator
        
      mainCoordinator?.homeCoodinator = r.resolve(HomeCoordinator.self)
      mainCoordinator?.homeCoodinator?.navigationController = r.resolve(UINavigationController.self)
        
    }
    
    defaultContainer.register(HomeCoordinator.self){_ in HomeCoordinator()}
    defaultContainer.register(MainCoordinator.self){_ in MainCoordinator()}
    defaultContainer.register(UINavigationController.self){_ in UINavigationController()}.inObjectScope(.transient)
  }
}
