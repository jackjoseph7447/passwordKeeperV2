//
//  ViewController.swift
//  passwordKeeperV2
//
//  Created by  on 1/2/20.
//  Copyright © 2020 JacksApps. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController
{
     var handle = Auth.auth().addStateDidChangeListener { (auth, user) in
      // ...
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
        FirebaseApp.configure()
        
        
    }

    
}

