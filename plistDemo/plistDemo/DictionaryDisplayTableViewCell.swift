//
//  DictionaryDisplayTableViewCell.swift
//  plistDemo
//
//  Created by Mac on 02/01/19.
//  Copyright © 2019 Pradnya. All rights reserved.
//

import UIKit

class DictionaryDisplayTableViewCell: UITableViewCell {

    
    
    @IBOutlet weak var lblCollgname: UILabel!
    
    @IBOutlet weak var lblName: UILabel!
    
    
    @IBOutlet weak var lblRollno: UILabel!
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
