//
//  newUserVC.swift
//  passwordKeeperV2
//
//  Created by  on 1/3/20.
//  Copyright © 2020 JacksApps. All rights reserved.
//

import UIKit
import Firebase

class newUserVC: UIViewController
{

    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var pwTF: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    
    
    
    @IBAction func signUpButton(_ sender: Any)
    {
        print("trying to sign up new user...")
        let email = emailTF.text!
        let pw = pwTF.text!
        Auth.auth().createUser(withEmail: email, password: pw) { authResult, error in
            
            if let err = error
            {
                print(err.localizedDescription)
            }
            else{
                print(authResult)
                self.performSegue(withIdentifier: "newUserCreated", sender: self)
                self.emailTF.text = ""
                self.pwTF.text = ""
            }
          // ...
        }
    }
    
    @IBAction func backButton(_ sender: Any)
    {
    navigationController?.popViewController(animated: true)
    }
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        errorLabel.text = ""
        
    }
    
    
    

}
