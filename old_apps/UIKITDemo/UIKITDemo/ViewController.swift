//
//  ViewController.swift
//  UIKITDemo
//
//  Created by Mac on 04/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
     var label : UILabel!
    var label1 : UILabel!
    var label2 : UILabel!
    var btn : UIButton!
    var btn1 : UIButton!
    var btn2 : UIButton!
    
    override func viewDidLoad() {
       
        super.viewDidLoad()
        
        label = UILabel()
        label.frame = CGRect(x: 80, y: 40, width: 150, height: 120)
        label.text = "BitCode"
        
        self.view.backgroundColor = UIColor.cyan
        
        self.view.addSubview(label)
      

        
        label1 = UILabel()
        label1.frame = CGRect(x: 80, y: 60, width: 150, height: 120)
        label1.text = "Ios"
          self.view.addSubview(label1)
        
        label2 = UILabel()
        label2.frame = CGRect(x: 80, y: 80, width: 150, height: 120)
        label2.text = "Android"
        self.view.addSubview(label2)
        
        btn = UIButton()
        btn.frame = CGRect(x: 80, y: 160, width: 80, height: 60)
        btn.setTitle("Click Me", for: .normal)
        btn.backgroundColor = UIColor.gray
        btn.addTarget(self, action: #selector(btnClicked), for: .touchUpInside)
        self.view.addSubview(btn)
        
        btn1 = UIButton()
        btn1.frame = CGRect(x: 80, y: 240, width: 150, height: 50)
        btn1.setTitle("Change Label", for: .normal)
        btn1.backgroundColor = UIColor.gray
        btn1.addTarget(self, action: #selector(changeLabel), for: .touchUpInside)
        self.view.addSubview(btn1)

        btn2 = UIButton()
        btn2.frame = CGRect(x: 80, y: 300, width: 150, height: 50)
        btn2.setTitle("Change Label1", for: .normal)
        btn2.backgroundColor = UIColor.gray
        btn2.addTarget(self, action: #selector(vcColor), for: .touchUpInside)
        self.view.addSubview(btn2)
       
        //Navigation
        self.navigationItem.title = "View Controller"
        let rbtn = UIBarButtonItem(title : "Next",style: .plain, target : self, action : #selector(rbtnClicked))
        navigationItem.rightBarButtonItem = rbtn

    
    }
    
    @objc func rbtnClicked(){
        let hvc = HomeViewController()
        self.navigationController?.pushViewController(hvc, animated: true)
    }
    
    @objc func btnClicked(){
        let alert = UIAlertController(title: "Alert", message: "I am Done", preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
        let action1 = UIAlertAction(title: "Cancel", style: .default, handler: nil)
        alert.addAction(action)
        alert.addAction(action1)
        self.present(alert,animated: true,completion: nil)
    }
    @objc func changeLabel(){
        label2.text = "Changed"
    }
    @objc func vcColor(){
        self.view.backgroundColor = UIColor.green
}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

