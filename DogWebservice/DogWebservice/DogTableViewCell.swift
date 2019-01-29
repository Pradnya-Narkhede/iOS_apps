//
//  DogTableViewCell.swift
//  DogWebservice
//
//  Created by Mac on 22/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class DogTableViewCell: UITableViewCell {

    
    @IBOutlet weak var lblBreed: UILabel!
    
    @IBOutlet weak var lblClassification: UILabel!
    
    
    @IBOutlet weak var lblTemperament: UILabel!
    
    
    @IBOutlet weak var imgData: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
