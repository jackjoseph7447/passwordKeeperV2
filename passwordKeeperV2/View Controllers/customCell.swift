//
//  customCell.swift
//  passwordKeeperV2
//
//  Created by  on 1/14/20.
//  Copyright © 2020 JacksApps. All rights reserved.
//

import UIKit
import Firebase

class CustomCell: UITableViewCell {

    @IBOutlet weak var userInfo: UILabel!
    @IBOutlet weak var websiteInfo: UILabel!
    @IBOutlet weak var passInfo: UILabel!
    
    
    
    
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool)
    {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

