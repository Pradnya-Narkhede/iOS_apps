//
//  PickerViewController.swift
//  XIBDemoDeleted
//
//  Created by Mac on 10/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class PickerViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {

    
    
    
    @IBOutlet weak var colopicker: UIPickerView!
    
    
    //var langarray = ["C","Cpp","Java"]
    var colorarray = ["Red","Blue","Green","Cyan"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colopicker.delegate = self
        colopicker.dataSource = self
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colorarray.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colorarray[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        let temp = colorarray[row]
        
        switch(temp){
        case "Red" :
            self.view.backgroundColor = UIColor.red
        case "Blue" :
            self.view.backgroundColor = UIColor.blue
        case "Green" :
            self.view.backgroundColor = UIColor.green

        case "Cyan":
            self.view.backgroundColor = UIColor.cyan
            
        default :
            self.view.backgroundColor = UIColor.gray

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
