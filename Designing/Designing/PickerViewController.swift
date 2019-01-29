//
//  PickerViewController.swift
//  Designing
//
//  Created by Mac on 12/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class PickerViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
 
    @IBOutlet weak var picker: UIPickerView!
  
   
    var colorarray = ["Red","Cyan","Green"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

       picker.dataSource = self
       picker.delegate = self

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
        let svc = storyboard?.instantiateViewController(withIdentifier: "cvc")as! ColorViewController
        svc.color = temp
        self.navigationController?.pushViewController(svc, animated: true)

        

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
