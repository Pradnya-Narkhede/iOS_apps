//
//  PickColorViewController.swift
//  NotificationDemo
//
//  Created by Mac on 03/01/19.
//  Copyright © 2019 Pradnya. All rights reserved.
//

import UIKit

class PickColorViewController: UIViewController {

    
    @IBOutlet weak var PickBtnClick: UIButton!
    
    
    @IBAction func PickBtnClick(_ sender: UIButton) {
     
        NotificationCenter.default.addObserver(self, selector: #selector(colorPick), name: NSNotification.Name(rawValue : "Notification"), object: nil)
       
        let pvc = storyboard?.instantiateViewController(withIdentifier: "pvc")as! PickerViewController
        self.navigationController?.pushViewController(pvc, animated: true)
    }
    
    func colorPick(_ n : Notification){
        
        var selectedColor = n.object as! String
       
        switch selectedColor {
        
        case "Red" :
            self.view.backgroundColor = UIColor.red
        case "Green" :
            self.view.backgroundColor = UIColor.green
        case "Blue" :
            self.view.backgroundColor = UIColor.blue
        case "Yellow" :
            self.view.backgroundColor = UIColor.yellow
        default :
            self.view.backgroundColor = UIColor.black
            
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}
