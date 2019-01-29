//
//  PickerViewController.swift
//  Revision
//
//  Created by Mac on 18/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class PickerViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    
    
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    var nameArray = ["Pradnya","Sneha","Rishikesh"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerView.delegate = self
        pickerView.dataSource = self
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return nameArray.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return nameArray[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let temp = nameArray[row]
        
        let svc = storyboard?.instantiateViewController(withIdentifier: "pdv")as!
        PickerDisplayViewController
       
        self.navigationController?.pushViewController(svc, animated: true)
        
        switch temp {
            
        case "Pradnya" :
            
            svc.temp = nameArray[row]
            
        case "Sneha":
            
            svc.temp = nameArray[row]
            
        case "Rishikesh":
            
            svc.temp = nameArray[row]
            
        default :
            
            print("Hi")
        }
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
