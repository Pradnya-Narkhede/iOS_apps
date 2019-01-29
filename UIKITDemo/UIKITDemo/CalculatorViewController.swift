//
//  CalculatorViewController.swift
//  UIKITDemo
//
//  Created by Mac on 05/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    var label1 : UILabel!
    var text1 : UITextField!
    var label2 : UILabel!
     var text2 : UITextField!
    var segment : UISegmentedControl!
    var button : UIButton!
    //var text3 : UITextField!
    var label3 : UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        label1 = UILabel()
        label1.frame = CGRect(x: 40, y: 40, width: 80, height: 60)
        label1.text = "First Value"
        self.view.addSubview(label1)
        
        text1 = UITextField()
        text1.frame = CGRect(x: 80, y: 80, width: 150, height: 60)
        text1.placeholder = "Enter Num1"
        self.view.addSubview(text1)
        
        label2 = UILabel()
        label2.frame = CGRect(x: 40, y: 120, width: 80, height: 60)
        label2.text = "Second Value"
        self.view.addSubview(label2)
        
        text2 = UITextField()
        text2.frame = CGRect(x: 80, y: 160, width: 150, height: 60)
        text2.placeholder = "Enter Num2"
        self.view.addSubview(text2)
        
        segment = UISegmentedControl()
        segment.frame = CGRect(x: 80, y: 220, width: 250, height: 60)
        segment.insertSegment(withTitle: "+", at: 0, animated: true)
        segment.insertSegment(withTitle: "-", at: 1, animated: true)
        segment.insertSegment(withTitle: "/", at: 2, animated: true)
        segment.insertSegment(withTitle: "*", at: 3, animated: true)
        //segment.addTarget(self,action : #selector(labelChanged), for : .valueChanged)
        self.view.backgroundColor = UIColor.orange
        self.view.addSubview(segment)

        button = UIButton()
        button.frame = CGRect(x: 150, y: 280, width: 100, height: 60)
        button.setTitle("Calculator", for: .normal)
        button.backgroundColor = UIColor.brown
        button.addTarget(self, action: #selector(btnClicked), for: .touchUpInside)
        self.view.addSubview(button)
        
        text2 = UITextField()
        text2.frame = CGRect(x: 80, y: 160, width: 150, height: 60)
        text2.placeholder = "Enter Num2"
        self.view.addSubview(text2)

//        text3 = UITextField()
//        text3.frame = CGRect(x: 150, y: 320, width: 80, height: 60)
//        text3.placeholder = "Result"
//        self.view.addSubview(text3)

        label3 = UILabel()
        label3.frame = CGRect(x: 150, y: 320, width: 80, height: 60)
        label3.text = "Result"
        self.view.addSubview(label3)
        
        //Navigation 
        self.navigationItem.title = "Calculator"
        let rbtn = UIBarButtonItem(title: "Next", style: .plain, target: self, action: #selector(rbtnClicked))
        navigationItem.rightBarButtonItem = rbtn

        
    }
    
    @objc func rbtnClicked(){
        let tavc = TableAssignmentViewController()
        self.navigationController?.pushViewController(tavc, animated: true)
    }
    @objc func btnClicked(){
        var selectedSeg = segment.selectedSegmentIndex
        
        var t1 = Int(text1.text!)
        
    
        var t2 = Int(text2.text!)
        
//        if selectedSeg == 0 {
//            label3.text = String(t1! + t2)
//        }
        
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
