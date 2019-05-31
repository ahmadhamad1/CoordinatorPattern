//
//  Coordinator.swift
//  CoordinatorPattern
//
//  Created by Ahmad J. Hamad on 5/31/19.
//  Copyright © 2019 Ahmad J. Hamad @sci3ntist. All rights reserved.
//

import UIKit

protocol Coordinator {
  var viewControllers:[UIViewController]?{get set}
  var navigationController:UINavigationController?{get set}
  func start()
}
