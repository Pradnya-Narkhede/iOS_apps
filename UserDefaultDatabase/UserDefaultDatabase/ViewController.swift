//
//  ViewController.swift
//  UserDefaultDatabase
//
//  Created by Mac on 02/01/19.
//  Copyright © 2019 Pradnya. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource,UITextFieldDelegate {

    @IBOutlet weak var txtData: UITextField!
    
    
    @IBOutlet weak var lblData: UILabel!
    
    let defaultDatabase = UserDefaults.standard
    
    var arrayOfSubjects = [String]()
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtData.delegate = self
        
        defaultDatabase.set("Bitcode", forKey: "Name")
        defaultDatabase.set(1, forKey: "Number")
        defaultDatabase.set(2.5, forKey: "Percentage")
        defaultDatabase.set(true, forKey: "Good")
        
        print(defaultDatabase.value(forKey: "Percentage")as! Float)
        
        let subjects = ["C","c++","Java","ios"]
        
        defaultDatabase.set(subjects, forKey: "subjects")
        
        let number = defaultDatabase.integer(forKey: "Number")
        
        print("Roll No. is \(number)")
        
        let percentage = defaultDatabase.double(forKey: "Percentage")
        let name = defaultDatabase.string(forKey: "Name")
        
        lblData.text = name
        
        
        arrayOfSubjects = defaultDatabase.array(forKey: "subjects")as! [String]
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        defaultDatabase.set(txtData.text, forKey: "Data")
        
        let data = defaultDatabase.value(forKey: "Data")as! String
        
        lblData.text = data
       
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrayOfSubjects.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return arrayOfSubjects[row]
    }

}

