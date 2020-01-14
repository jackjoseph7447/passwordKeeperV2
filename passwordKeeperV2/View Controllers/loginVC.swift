//
//  loginVC.swift
//  abseil
//
//  Created by  on 1/8/20.
//

import UIKit
import Firebase

class loginVC: UIViewController
{

    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var pwTF: UITextField!
    
    @IBAction func loginButton(_ sender: Any)
    {
        let email = emailTF.text!
        let pw = pwTF.text!

        Auth.auth().signIn(withEmail: email, password: pw) { (result, error) in
            if let error = error, let _ = AuthErrorCode(rawValue: error._code)
            {
                print(error)
                self.incorrectPW()

            }
                else
            {

                print("signed in!!!!!")
                self.performSegue(withIdentifier: "loginAccepted", sender: self)
                self.emailTF.text = ""
                self.pwTF.text = ""
            }
        }


    }
    
    
    @IBAction func backButton(_ sender: Any)
    {
        navigationController?.popViewController(animated: true)
    }
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()




    }
    
    func incorrectPW()
    {
        let myAlert = UIAlertController(title: "Your password is incorrect", message: "Please Try Again", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
        myAlert.addAction(okAction)
        self.present(myAlert, animated: true, completion: nil)
    }
    

}
