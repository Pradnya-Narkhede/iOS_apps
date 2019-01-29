//
//  ColorViewController.swift
//  Designing
//
//  Created by Mac on 12/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class ColorViewController: UIViewController {
     var color : String!
    override func viewDidLoad() {
        super.viewDidLoad()
        switch(color){
        case "Red":
            self.view.backgroundColor = UIColor.red
        case "Cyan":
            self.view.backgroundColor = UIColor.cyan
        case "Green":
            self.view.backgroundColor = UIColor.green
        default :
            self.view.backgroundColor = UIColor.red

        }
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
