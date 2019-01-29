//
//  Assignment3ViewController.swift
//  UIKITDemo
//
//  Created by Mac on 06/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class Assignment3ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {

    var picker : UIPickerView!
    var namearray = ["Pradnya","Sneha","Kajal","Prachi","Kunda"]
    var label : UILabel!
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
 
        picker = UIPickerView(frame: CGRect(x: 40, y: 40, width: 300, height: 300))
        picker.delegate = self
        picker.dataSource = self
        self.view.backgroundColor = UIColor.cyan
        self.view.addSubview(picker)
        
        label = UILabel()
        label.frame = CGRect(x: 80, y: 200, width: 100, height: 60)
        label.text = "Label"
        self.view.addSubview(label)

         


        
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return namearray.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return namearray[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let temp = namearray[row]
        switch(temp){
        case "Pradnya" :
            label.text = "Pradnya"
        case "Sneha" :
            label.text = "Sneha"
        case "Kajal" :
            label.text = "Kajal"
        case "Prachi" :
            label.text = "Prachi"
        case "Kunda" :
            label.text = "Kunda"
        default :
            label.text = "Label"
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
