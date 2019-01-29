//
//  PersonViewController.swift
//  CustomTable
//
//  Created by Mac on 13/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class PersonViewController: UIViewController {

    var personArray = [Person]()
    
    @IBOutlet weak var lblTitle: UILabel!
    
    @IBOutlet weak var txtName: UITextField!
    
    @IBOutlet weak var txtAge: UITextField!
    
    @IBOutlet weak var txtDob: UITextField!
    
    
    @IBOutlet weak var txtGender: UITextField!
    
    
    @IBOutlet weak var image: UIImageView!
    
    @IBAction func saveClicked(_ sender: UIButton) {
        
        var p = Person()
        p.personName = txtName.text
        p.personAge = Int(txtAge.text!)
        p.personDob = Int(txtDob.text!)
        p.personGender = txtGender.text
        p.image = "Apple.jpeg"
        personArray.append(p)
        

        let alert = UIAlertController(title : "Alert", message: "Data Saved Sucessfully", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
        
        alert.addAction(action)
        
        self.present(alert,animated: true,completion: nil)
        
      }
    
    @IBAction func passClicked(_ sender: Any) {
        
        let svc = storyboard?.instantiateViewController(withIdentifier: "ptvc")as! PersonTableViewController
        
        svc.tempArray = personArray
        
        self.navigationController?.pushViewController(svc, animated: true)
        

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        image.image = UIImage(named: "Apple.jpeg")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   }
