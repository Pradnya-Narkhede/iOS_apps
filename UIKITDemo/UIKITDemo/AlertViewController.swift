//
//  AlertViewController.swift
//  UIKITDemo
//
//  Created by Mac on 05/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class AlertViewController: UIViewController {
    var label : UILabel!
    var text1 : UITextField!
    var text2 : UITextField!
    var button : UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        label = UILabel()
        label.frame = CGRect(x: 40, y: 40, width: 80, height: 60)
        label.text = "Login"
        self.view.addSubview(label)
        
        text1 = UITextField()
        text1.frame = CGRect(x: 80, y: 80, width: 150, height: 80)
        text1.placeholder = "Enter Id"
        self.view.addSubview(text1)
        
        text2 = UITextField()
        text2.frame = CGRect(x: 80, y: 120, width: 150, height: 80)
        text2.placeholder = "Enter Password"
        self.view.addSubview(text2)
        
        button = UIButton()
        button.frame = CGRect(x: 150, y: 180, width: 80, height: 60)
        button.setTitle("Login", for: .normal)
        button.backgroundColor = UIColor.brown
        button.addTarget(self, action: #selector(btnClicked), for: .touchUpInside)
        self.view.addSubview(button)
        
       
    
    }
    @objc func btnClicked(){
        let t1 = text1.text
        let t2 = text2.text
        if t1 == t2 {
            let alert = UIAlertController(title : "Alert", message: "Login Sucessful", preferredStyle: .alert)
            let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
            
            alert.addAction(action)
            
            self.present(alert,animated: true,completion: nil)

        }else {
            let alert1 = UIAlertController(title : "Alert", message: "Login Unsucessful", preferredStyle: .alert)
            let action1 = UIAlertAction(title: "Ok", style: .default, handler: nil)
            
            alert1.addAction(action1)
             self.present(alert1,animated: true,completion: nil)
            
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
