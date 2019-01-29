//
//  SegmentViewController.swift
//  UIKITDemo
//
//  Created by Mac on 06/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class SegmentViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {

    var segment : UISegmentedControl!
    var picker : UIPickerView!
    var colorarray = ["Red","Green","Yellow","Orange"]
    var languagearray = ["C","Cpp","Java","Ios","Android"]
    var pickerArray = [String]()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        segment = UISegmentedControl()
        segment.frame = CGRect(x: 40, y: 40, width: 300, height: 300)
        segment.insertSegment(withTitle: "Colors", at: 0, animated: true)
        segment.insertSegment(withTitle: "Language", at: 1, animated: true)
        segment.addTarget(self,action : #selector(titleChanged), for : .valueChanged)
        
        self.view.addSubview(segment)
        
        picker = UIPickerView()
        picker.frame = CGRect(x: 40, y: 350, width: 300, height: 300)
        picker.delegate = self
        picker.dataSource = self
        self.view.backgroundColor = UIColor.cyan
        self.view.addSubview(picker)
        
        //Navigation
        self.navigationItem.title = "Segment"
        let rbtn = UIBarButtonItem(title: "Next", style: .plain, target: self, action: #selector(rbtnClicked))
        navigationItem.rightBarButtonItem = rbtn
    }
    @objc func rbtnClicked(){
        let cvc = CalculatorViewController()
        self.navigationController?.pushViewController(cvc, animated: true)
    }
    @objc func titleChanged(){
        let selectedSeg = segment.selectedSegmentIndex
       
        if selectedSeg == 0 {
            pickerArray = colorarray
            picker.reloadAllComponents()
        }
            if selectedSeg == 1 {
                pickerArray = languagearray
               picker.reloadAllComponents()
            }
        
        
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerArray.count
      
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerArray[row]
        
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
