//
//  newEntryVC.swift
//  passwordKeeperV2
//
//  Created by  on 1/3/20.
//  Copyright © 2020 JacksApps. All rights reserved.
//

import UIKit
import Firebase

class newEntryVC: UIViewController
{

    @IBOutlet weak var siteInfo: UITextField!
    @IBOutlet weak var userInfo: UITextField!
    @IBOutlet weak var passInfo: UITextField!
    
    @IBAction func newInfoButton(_ sender: Any)
    {
    

    }
    
    @IBAction func cancelButton(_ sender: Any)
    {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()


    }
    

    

}
