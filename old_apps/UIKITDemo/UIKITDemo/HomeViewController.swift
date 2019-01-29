//
//  HomeViewController.swift
//  UIKITDemo
//
//  Created by Mac on 04/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITextFieldDelegate {

    var seg : UISegmentedControl!
    var switchData : UISwitch!
    var slider : UISlider!
    var txtData : UITextField!
    var txtData1 : UITextField!
    var imageData : UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
   
        seg = UISegmentedControl()
        seg.frame = CGRect(x: 40, y: 40, width: 200, height: 100)
        seg.insertSegment(withTitle: "C", at: 0, animated: true)
        seg.insertSegment(withTitle: "Cpp", at: 1, animated: true)
        seg.insertSegment(withTitle: "Swift", at: 2, animated: true)
        seg.addTarget(self,action : #selector(segClicked), for : .valueChanged)
        self.view.backgroundColor = UIColor.lightGray
        self.view.addSubview(seg)
        
        switchData = UISwitch()
        switchData.frame = CGRect(x: 40, y: 150, width: 80, height: 80)
        switchData.addTarget(self, action: #selector(switched), for: .valueChanged)
        self.view.addSubview(switchData)
        
        slider = UISlider()
        slider.frame = CGRect(x: 40, y: 200, width: 80, height: 100)
        slider.minimumValue = 1
        slider.maximumValue = 5
        slider.addTarget(self, action: #selector(slide), for: .valueChanged)
        self.view.addSubview(slider)
        
        txtData = UITextField()
        txtData.frame = CGRect(x: 40, y: 250, width: 80, height: 100)
        txtData.placeholder = "Enter Text"
        txtData.clearButtonMode = UITextFieldViewMode.whileEditing
        txtData.delegate = self
        self.view.addSubview(txtData)
        
        txtData1 = UITextField()
        txtData1.frame = CGRect(x: 40, y: 280, width: 80, height: 100)
        txtData1.placeholder = "Enter Text"
        txtData1.clearButtonMode = UITextFieldViewMode.whileEditing
        txtData1.delegate = self
        self.view.addSubview(txtData1)
        
        imageData = UIImageView()
        imageData.frame = UIScreen.main.bounds
        //CGRect(x: 80, y: 350, width: 250, height: 150)
        imageData.image = UIImage(named : "Apple.jpeg")
        self.view.addSubview(imageData)
        
        //Navigation
        
        self.navigationItem.title = "Home View Controller"
        let rbtn = UIBarButtonItem(title : "+",style: .plain, target : self, action : #selector(rbtnClicked))
//        let lbtn = UIBarButtonItem(title : "+",style: .plain, target : self, action : #selector(lbtnClicked))
        navigationItem.rightBarButtonItem = rbtn
        //navigationItem.leftBarButtonItem = lbtn
        
          }
    
    
    //Functions
    
    @objc func rbtnClicked(){
        let pvc = PickerViewController()
        self.navigationController?.pushViewController(pvc, animated: true)
    }
        @objc func segClicked(){
        let selectedSeg = seg.selectedSegmentIndex
        print("Selected Segment is \(selectedSeg)")
    }
    @objc func switched(){
        print("on")
    }
    @objc func slide(){
        let value = slider.value
        print(value)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldClear(_ textField : UITextFieldDelegate)->Bool {
        print("Clear")
        return true
    }
    func textFieldShouldReturn(_ textField: UITextFieldDelegate) -> Bool {
        print("Return")
        return true
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
