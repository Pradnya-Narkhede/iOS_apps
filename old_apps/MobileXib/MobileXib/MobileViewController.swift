//
//  MobileViewController.swift
//  MobileXib
//
//  Created by Mac on 18/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class MobileViewController: UIViewController {
    
    var mobArray = [Mobile]()
    
   
    @IBOutlet weak var lblTitle: UILabel!
    
    
    
    @IBOutlet weak var textMobName: UITextField!
    
    
    @IBOutlet weak var textMobBattery: UITextField!

    
    @IBOutlet weak var textPrice: UITextField!
    
    
    
    @IBOutlet weak var textMeomery: UITextField!
    
    
    
    @IBAction func btnSave(_ sender: UIButton) {
        var m = Mobile()
        m.mobName = textMobName.text
        m.mobBattery = Int(textMobBattery.text!)
        m.Price = Int(textPrice.text!)
        m.mobMeomery = Int(textMeomery.text!)
        mobArray.append(m)
        
        
        
        let alert = UIAlertController(title:"Alert", message: "Record Sucessfully", preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
        
        alert.addAction(action)
        
        self.present(alert,animated: true,completion: nil)
    }
      
    
    @IBAction func btnPass(_ sender: UIButton) {
        let svc = MobileTableViewController()
        
        svc.tempArray = mobArray
        
        self.navigationController?.pushViewController(svc, animated: true)

    }
    
        override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
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
