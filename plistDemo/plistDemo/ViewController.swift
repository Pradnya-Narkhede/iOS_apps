//
//  ViewController.swift
//  plistDemo
//
//  Created by Mac on 02/01/19.
//  Copyright © 2019 Pradnya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    var arr = [String]()
   
    @IBOutlet weak var lblData: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "Array", ofType: ".plist")
        let array = NSMutableArray.init(contentsOfFile: path!)!
        print(array)
        
        for item in array {
            self.arr.append(item as! String)
        }
        
        
        
//        let path1 = Bundle.main.path(forResource: "Dictionary", ofType: ".plist")
//        let dict = NSMutableDictionary.init(contentsOfFile: path1!)!
//        let name = dict.value(forKey: "Name")as! String
//        lblData.text = name
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

