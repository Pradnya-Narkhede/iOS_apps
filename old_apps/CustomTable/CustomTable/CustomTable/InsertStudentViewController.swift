//
//  InsertStudentViewController.swift
//  CustomTable
//
//  Created by Mac on 13/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class InsertStudentViewController: UIViewController {

    var studArray = [Student]()
    
    @IBOutlet weak var lblTitle: UILabel!
    
    
    @IBOutlet weak var txtName: UITextField!
    
    
    @IBOutlet weak var txtRollno: UITextField!
    
    @IBOutlet weak var txtMailid: UITextField!
    
    
    @IBOutlet weak var txtMarks: UITextField!
    
    
    @IBAction func saveClicked(_ sender: UIButton) {
        
        var s = Student()
        s.name = txtName.text
        s.rollno = Int(txtRollno.text!)
        s.mailId = txtMailid.text
        s.marks = Int(txtMarks.text!)
        studArray.append(s)
    }
    
    
    @IBAction func passClicked(_ sender: UIButton) {
        let svc = storyboard?.instantiateViewController(withIdentifier: "stvc")as! StudentTableViewController
        
        svc.tempArray = studArray
        
        self.navigationController?.pushViewController(svc, animated: true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
