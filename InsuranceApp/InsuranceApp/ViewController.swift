//
//  ViewController.swift
//  InsuranceApp
//
//  Created by Mac on 04/12/18.
//  Copyright © 2018 Aditya. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var contact: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var amount: UITextField!
    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var image: UIImageView!
   let array = ["Health","Life","Travel","Vehicle","Home"]
    
    @IBAction func btn(_ sender: UIButton) {
        let svc = TableViewController()
        svc.temp = name.text!
        self.navigationController?.pushViewController(svc, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        picker.dataSource = self
        picker.delegate = self
        self.view.addSubview(picker)
        
        self.view.addSubview(name)
        self.view.addSubview(contact)
        self.view.addSubview(email)
        self.view.addSubview(amount)
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return array.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let type = array[row]
    return type
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

