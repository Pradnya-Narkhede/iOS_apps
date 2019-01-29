//
//  Assignment2ViewController.swift
//  UIKITDemo
//
//  Created by Mac on 05/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class Assignment2ViewController: UIViewController {
    
    var label : UILabel!
    var text1 : UITextField!
    var text2 : UITextField!
    var button : UIButton!
    var label1 : UILabel!
    var button1 : UIButton!
    var imageData : UIImageView!

    
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
        
        label1 = UILabel()
        label1.frame = CGRect(x: 80, y: 240, width: 80, height: 60)
        label1.text = ""
        self.view.addSubview(label1)
        
        

        
        imageData = UIImageView()
        imageData.frame = CGRect(x: 80, y: 330, width: 250, height: 150)
        imageData.image = UIImage(named : "Apple.jpeg")
        self.view.addSubview(imageData)
        
        button1 = UIButton()
        button1.frame = CGRect(x: 150, y: 350, width: 80, height: 60)
        button1.setTitle("Click", for: .normal)
        button1.backgroundColor = UIColor.black
        button1.addTarget(self, action: #selector(btnClicked1), for: .touchUpInside)
        self.view.addSubview(button1)

}

    @objc func btnClicked(){
        let t1 = text1.text
        let t2 = text2.text
        if t1 == t2 {
            label1.text = "Succesful"

        }else {
            label1.text = "Unsucessful"

        }
        
        
    }
    
//    @objc func imageclick(){
//        imageData.frame = UIScreen.main.bounds
//        imageData.image = UIImage(named : "mango.jpg")
//    }
    @objc func btnClicked1(){
        //let value = button
        imageData.frame = UIScreen.main.bounds
        imageData.image = UIImage(named : "mango.jpg")
        //imageData.frame = CGRect(x: 80, y: 330, width: 250, height: 150)
        
        
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
