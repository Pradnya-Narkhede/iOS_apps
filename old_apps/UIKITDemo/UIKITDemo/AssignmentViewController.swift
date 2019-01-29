//
//  AssignmentViewController.swift
//  UIKITDemo
//
//  Created by Mac on 04/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit



class AssignmentViewController: UIViewController {
    
    var seg1 : UISegmentedControl!
    var seg2 : UISegmentedControl!
    var label : UILabel!
    var label1 : UILabel!
    var switchData1 : UISwitch!
    var slider : UISlider!
    var slider1 : UISlider!
    var slider2 : UISlider!
    var slider3 : UISlider!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        seg1 = UISegmentedControl()
        
        seg1.frame = CGRect(x: 40, y: 40, width: 300, height: 100)
        seg1.insertSegment(withTitle: "Red", at: 0, animated: true)
        seg1.insertSegment(withTitle: "Blue", at: 1, animated: true)
        seg1.insertSegment(withTitle: "Green", at: 2, animated: true)
        
        seg1.insertSegment(withTitle: "Yellow", at: 3, animated: true)
        
        seg1.insertSegment(withTitle: "Cyan", at: 4, animated: true)
          seg1.insertSegment(withTitle: "Brown", at: 5, animated: true)


        seg1.addTarget(self,action : #selector(segClicked1), for : .valueChanged)
        self.view.backgroundColor = UIColor.orange
        self.view.addSubview(seg1)
        
        //Label Changed
        
        seg2 = UISegmentedControl()
        
        seg2.frame = CGRect(x: 40, y: 180, width: 300, height: 100)
        seg2.insertSegment(withTitle: "Pradnya", at: 0, animated: true)
        seg2.insertSegment(withTitle: "Sneha", at: 1, animated: true)
        seg2.insertSegment(withTitle: "Rishikesh", at: 2, animated: true)
        
        seg2.insertSegment(withTitle: "Anjali", at: 3, animated: true)
        
        seg2.insertSegment(withTitle: "Priyanka", at: 4, animated: true)
        seg2.insertSegment(withTitle: "Namrata", at: 5, animated: true)
        
        
        seg2.addTarget(self,action : #selector(labelChanged), for : .valueChanged)
        self.view.backgroundColor = UIColor.orange
        self.view.addSubview(seg2)
        
        //label
        label = UILabel()
        label.frame = CGRect(x: 80, y: 250, width: 150, height: 120)
        label.text = "BitCode"
        
        //self.view.backgroundColor = UIColor.orange
        
        self.view.addSubview(label)
        
        //On off Switch
        switchData1 = UISwitch()
        switchData1.frame = CGRect(x: 80, y: 350, width: 80, height: 80)
        switchData1.addTarget(self, action: #selector(switchedOn), for: .valueChanged)
        self.view.addSubview(switchData1)

        label1 = UILabel()
        label1.frame = CGRect(x: 80, y: 380, width: 150, height: 120)
        label1.text = "BitCode"
        self.view.addSubview(label1)
        
        //Slider
        
        slider = UISlider()
        slider.frame = CGRect(x: 80, y: 420, width: 80, height: 100)
        slider.minimumValue = 1
        slider.maximumValue = 5
        slider.addTarget(self, action: #selector(slide), for: .valueChanged)
        self.view.addSubview(slider)
        
        slider1 = UISlider()
        slider1.frame = CGRect(x: 80, y: 480, width: 80, height: 100)
        slider1.minimumValue = 1
        slider1.maximumValue = 5
        slider1.addTarget(self, action: #selector(slide1), for: .valueChanged)
        self.view.addSubview(slider1)
        
        slider2 = UISlider()
        slider2.frame = CGRect(x: 80, y: 520, width: 80, height: 100)
        slider2.minimumValue = 1
        slider2.maximumValue = 5
        slider2.addTarget(self, action: #selector(slide2), for: .valueChanged)
        self.view.addSubview(slider2)
        
        slider3 = UISlider()
        slider3.frame = CGRect(x: 80, y: 560, width: 80, height: 100)
        slider3.minimumValue = 1
        slider3.maximumValue = 5
        slider3.addTarget(self, action: #selector(slide3), for: .valueChanged)
        self.view.addSubview(slider3)



    
    }
    
    @objc func labelChanged(){
        let selectedSeg = seg2.selectedSegmentIndex
        switch(selectedSeg){
        case 0 :
            label.text = "Pradnya"
        case 1 :
            
            label.text = "Sneha"
        case 2 :
            
            label.text = "Rishikesh"
        case 3 :
           label.text = "Anjali"
        case 4 :
            label.text = "Priyanka"
        case 5 :
           label.text = "Namrata"
        default :
            self.view.backgroundColor = UIColor.orange
            
        }
    }
    @objc func segClicked1(){
        let selectedSeg1 = seg1.selectedSegmentIndex
        switch(selectedSeg1){
        case 0 :
            self.view.backgroundColor = UIColor.red
            
        case 1 :
            self.view.backgroundColor = UIColor.blue
        case 2 :
            self.view.backgroundColor = UIColor.green
        case 3 :
            self.view.backgroundColor = UIColor.yellow
        case 4 :
            self.view.backgroundColor = UIColor.cyan
        case 5 :
            self.view.backgroundColor = UIColor.brown
        default :
            self.view.backgroundColor = UIColor.orange
            
        }//Switch
    }//Function
    
    @objc func switchedOn(){
        let x : Bool = true
        if x == switchData1.isOn{
            label1.text = "On"
        }else {
           label1.text = "Off"
        }
    }
    
    @objc func slide(){
       self.view.backgroundColor = UIColor.red
        
    }
    
    @objc func slide1(){
        self.view.backgroundColor = UIColor.blue
    }
    
    @objc func slide2(){
    self.view.backgroundColor = UIColor.green
    }
        
    @objc func slide3(){
       self.view.backgroundColor = UIColor.yellow
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
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
