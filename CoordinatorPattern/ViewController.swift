//
//  ViewController.swift
//  CoordinatorPattern
//
//  Created by Ahmad J. Hamad on 5/31/19.
//  Copyright © 2019 Ahmad J. Hamad. All rights reserved.
//

import UIKit
import SwinjectStoryboard

class ViewController: UIViewController {

    
  override func viewDidLoad()
  {
    super.viewDidLoad()
  }


  /**
   */
  @IBAction func launchClick(_ sender: UIButton)
  {
    let sb = SwinjectStoryboard.create(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MainTabBarController") as! MainTabBarController
    self.navigationController?.present(sb, animated: true, completion: nil)
  }
}

