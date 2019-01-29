//
//  LanguageDisplayViewController.swift
//  Revision
//
//  Created by Mac on 19/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class LanguageDisplayViewController: UIViewController {

    var temp : Language!
    
    @IBOutlet weak var imgData: UIImageView!
    
    
    @IBOutlet weak var lblLanguage: UILabel!
    
    
    
    @IBOutlet weak var lblDeveloper: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblLanguage.text = temp.language
        lblDeveloper.text = temp.Developer
        imgData.image = UIImage(named : temp.icon)
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
