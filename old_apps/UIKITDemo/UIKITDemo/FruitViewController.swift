//
//  FruitViewController.swift
//  UIKITDemo
//
//  Created by Mac on 06/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class FruitViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate{
    var picker : UIPickerView!
    //var name : UIlabel!
    var imagearray = ["Apple.jpeg","Orange.jpg","mango.jpg"]
    var label1 : UILabel!
    var label2 : UILabel!
    var label3 : UILabel!
    var label4 : UILabel!
    var name : UILabel!
    var catagory : UILabel!
    var season : UILabel!
    var desc : UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        picker = UIPickerView()
        picker.frame = CGRect(x: 40, y: 40, width: 300, height: 300)
        picker.delegate = self
        picker.dataSource = self
        self.view.backgroundColor = UIColor.cyan
        self.view.addSubview(picker)
        
        label1 = UILabel()
        label1.frame = CGRect(x : 80 , y : 300,width : 80,height : 60)
        label1.text = "Name"
        self.view.addSubview(label1)
        
        label2 = UILabel()
        label2.frame = CGRect(x : 80 , y : 340,width : 80,height : 60)
        label2.text = "Catagory"
        self.view.addSubview(label2)
        
        label3 = UILabel()
        label3.frame = CGRect(x : 80 , y : 380,width : 80,height : 60)
        label3.text = "Season"
        self.view.addSubview(label3)
        
        label4 = UILabel()
        label4.frame = CGRect(x : 80 , y : 420,width : 80,height : 60)
        label4.text = "Description"
        self.view.addSubview(label4)
        
        name = UILabel()
        name.frame = CGRect(x : 160 , y : 300,width : 80,height : 60)
        name.text = ""
        self.view.addSubview(name)
        
        catagory = UILabel()
        catagory.frame = CGRect(x : 160 , y : 340,width : 80,height : 60)
        catagory.text = ""
        self.view.addSubview(catagory)
        
        season = UILabel()
        season.frame = CGRect(x : 160 , y : 380,width : 80,height : 60)
        season.text = ""
        self.view.addSubview(season)
        
        desc = UILabel()
        desc.frame = CGRect(x : 160 , y : 420,width : 180,height : 180)
        desc.text = ""
        self.view.addSubview(desc)
        

        


    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return imagearray.count
        
    }
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        imageView.image = UIImage(named: imagearray[row])
        view.addSubview(imageView)
        
        return view
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let temp = imagearray[row]
        switch(temp){
        case "Apple.jpeg" :
            name.text = "Apple"
            catagory.text = "Fruits"
            season.text = "All Time"
            desc.text = "Apple Fruit is Best For Health"
        case "Orange.jpg" :
            name.text = "Orange"
            catagory.text = "Fruits"
            season.text = "Winter"
            desc.text = "Apple Fruit is Best For Health"

        case "mango.jpg" :
            name.text = "Mango"
            catagory.text = "Fruits"
            season.text = "summer"
            desc.text = "Mango Fruits Best For Health"
        default :
            name.text = "Mango"
            
               }//Switch
        

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
