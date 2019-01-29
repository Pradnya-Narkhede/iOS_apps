//
//  ReceiverViewController.swift
//  NotificationDemo
//
//  Created by Mac on 03/01/19.
//  Copyright © 2019 Pradnya. All rights reserved.
//

import UIKit

class ReceiverViewController: UIViewController {

    
    
    @IBOutlet weak var ReceiverClick: UIButton!
    
    
    
    @IBAction func ReceiverClick(_ sender: UIButton) {
        
        NotificationCenter.default.addObserver(self, selector: #selector(gotIt), name: NSNotification.Name(rawValue : "SomeNotification"), object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(got), name: NSNotification.Name(rawValue : "SomeNotification1"), object: nil)
        
        let tvc = storyboard?.instantiateViewController(withIdentifier: "tvc")as! TwoViewController
        self.navigationController?.pushViewController(tvc, animated: true)
    }
    
    func gotIt(){
        print("Notification1 Received")
    }
    func got(){
        print("Notification2 Received")
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
