//
//  TwoViewController.swift
//  NotificationDemo
//
//  Created by Mac on 03/01/19.
//  Copyright © 2019 Pradnya. All rights reserved.
//

import UIKit

class TwoViewController: UIViewController {

    
    
    @IBOutlet weak var senderClick: UIButton!
    
    
    @IBAction func senderClick(_ sender: UIButton) {
        
        let n = Notification.init(name: Notification.Name(rawValue: "SomeNotification"))
        
        NotificationCenter.default.post(n)
        
        let n1 = Notification.init(name: Notification.Name(rawValue: "SomeNotification1"))
        
        NotificationCenter.default.post(n1)

    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
