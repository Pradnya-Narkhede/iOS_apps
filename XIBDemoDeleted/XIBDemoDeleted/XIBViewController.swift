//
//  XIBViewController.swift
//  XIBDemoDeleted
//
//  Created by Mac on 10/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class XIBViewController: UIViewController {

   
    @IBOutlet weak var navigation: UINavigationItem!
    
    @IBOutlet weak var label1: UILabel!
  
    
    @IBOutlet weak var text1: UITextField!
    
    
    @IBOutlet weak var label2: UILabel!
    
    
    @IBOutlet weak var text2: UITextField!
    
    
    @IBOutlet weak var segment: UISegmentedControl!
    
    @IBAction func button(_ sender: Any) {
        
      let selectedSeg = segment.selectedSegmentIndex
        
        let t1 = Int(text1.text!)
        let t2 = Int(text2.text!)
        
        switch(selectedSeg) {
            
        case 0 :
            label3.text = String(t1! + t2!)
        case 1 :
            label3.text = String(t1! - t2!)
        case 2 :
            label3.text = String(t1! * t2!)
        case 3 :
            label3.text = String(t1! / t2!)
        default :
            label3.text = "Result"
        }
    }
    
    @IBOutlet weak var label3: UILabel!
    
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
