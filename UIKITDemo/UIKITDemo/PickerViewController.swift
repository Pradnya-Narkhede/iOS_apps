//
//  PickerViewController.swift
//  UIKITDemo
//
//  Created by Mac on 06/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class PickerViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {

    var picker : UIPickerView!
    //var array = ["C","Cpp","Java","ios","Swift"]
    var Colorarray = ["Red","Green","Gray","Yellow","Orange"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        picker = UIPickerView(frame: CGRect(x: 40, y: 40, width: 300, height: 300))
        picker.delegate = self
        picker.dataSource = self
        self.view.backgroundColor = UIColor.cyan
        self.view.addSubview(picker)
        
        self.navigationItem.title = "Picker View Controller"
        let rbtn = UIBarButtonItem(title : "+",style: .plain, target : self, action : #selector(rbtnClicked))
        let lbtn = UIBarButtonItem(title : "+",style: .plain, target : self, action : #selector(lbtnClicked))
        navigationItem.rightBarButtonItem = rbtn
        navigationItem.leftBarButtonItem = lbtn
        

    }
    @objc func rbtnClicked(){
        let svc = SegmentViewController()
        self.navigationController?.pushViewController(svc, animated: true)
    }
    @objc func lbtnClicked(){
        let vc = ViewController()
        self.navigationController?.popToRootViewController(animated: true)
    }

//    func numberOfComponents(in pickerView: UIPickerView) -> Int {
//        return 2
//    }
//    
//    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
//        if component == 0{
//            return 4
//        } else {
//          return 3
//        }
//    }
//    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        if component == 0 {
//            if row == 0 {
//                return "Bitcode"
//            }
//            else {
//                return "Hello"
//            }
//        }
//        else {
//            if row == 0 {
//                return "Technology"
//            }else {
//                return "Hi"
//            }
//        }
//    }
    
//    func numberOfComponents(in pickerView: UIPickerView) -> Int {
//        return 1
//    }
//    
//    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
//        return array.count
//    }
//    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        return array[row]
//    }
//
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Colorarray.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Colorarray[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let temp = Colorarray[row]
        switch(temp){
        case "Red" :
           self.view.backgroundColor = UIColor.red
        case "Green" :
            self.view.backgroundColor = UIColor.green
        case "Gray" :
            self.view.backgroundColor = UIColor.gray
        case "Yellow" :
            self.view.backgroundColor = UIColor.yellow
        case "Orange" :
            self.view.backgroundColor = UIColor.orange
        default :
             self.view.backgroundColor = UIColor.cyan
       }//Switch
  
    }//Function
    
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
