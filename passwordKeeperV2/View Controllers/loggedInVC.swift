//
//  loggedInVC.swift
//  passwordKeeperV2
//
//  Created by  on 1/3/20.
//  Copyright © 2020 JacksApps. All rights reserved.
//

import UIKit
import Firebase

class loggedInVC: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    
    @IBOutlet weak var myTableView: UITableView!
    

    override func viewDidLoad()
    {
        super.viewDidLoad()
        myTableView.dataSource = self
        myTableView.delegate = self
    }
    
    @IBAction func logOutButton(_ sender: Any)
    {


        logOutAlert()
    }
    
    @IBAction func addButton(_ sender: Any)
    {
        self.performSegue(withIdentifier: "newPW", sender: self)
    }
    
    
    
    
    // MARK: TableviewMethods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "infoCell", for: indexPath) as! CustomCell
        cell.passInfo.text = "123456"
        cell.websiteInfo.text = "Google"
        cell.userInfo.text = "test@gmail.com"
        
        
        
        return cell
    }
    
    func logOutAlert()
    {
        let myAlert = UIAlertController(title: "Are you sure?", message: "To logout, press 'Ok'", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default, handler: {action in
            print("logging out")
            self.navigationController?.popViewController(animated: true)

        })
        let cancelAction = UIAlertAction(title: "Cancel", style: .default, handler: nil)
        myAlert.addAction(okAction)
        myAlert.addAction(cancelAction)
        self.present(myAlert, animated: true, completion: nil)
    }
   

}
