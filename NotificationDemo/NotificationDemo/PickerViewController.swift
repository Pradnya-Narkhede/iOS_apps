//
//  PickerViewController.swift
//  NotificationDemo
//
//  Created by Mac on 03/01/19.
//  Copyright © 2019 Pradnya. All rights reserved.
//

import UIKit

class PickerViewController: UIViewController, UIPickerViewDataSource,UIPickerViewDelegate{

   
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    var colorArray = ["Red","Green","Blue","Yellow"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colorArray.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colorArray[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        var temp = colorArray[row]
        
        let n = Notification.init(name: Notification.Name(rawValue : "Notification"), object: temp, userInfo: nil)
        
        
        NotificationCenter.default.post(n)
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
