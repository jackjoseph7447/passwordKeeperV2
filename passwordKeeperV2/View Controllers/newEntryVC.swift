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
        
        let username = userInfo.text!
        let password = passInfo.text!
        let site = siteInfo.text!
        
        let values :[String: String] = ["username": username, "password": password, "site": site]
        
        let ref = Database.database().reference(withPath: site)
        
        ref.setValue(values)
        
        self.navigationController?.popViewController(animated: true)


    }
    
    @IBAction func cancelButton(_ sender: Any)
    {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        let rootRef = Database.database().reference()
        let childRef = Database.database().reference(withPath: "grocery-items")
        let itemsRef = rootRef.child("grocery-items")
        let milkRef = itemsRef.child("milk")
       

    }
    

    

}
