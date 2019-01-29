//
//  InsertViewController.swift
//  Designing
//
//  Created by Mac on 12/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class InsertViewController: UIViewController {
     var empArray = [Employee]()
    
    @IBOutlet weak var textId: UITextField!
    
    @IBOutlet weak var textName: UITextField!
    
    @IBOutlet weak var textSal: UITextField!
    
    
    @IBAction func saveClicked(_ sender: UIButton) {
        
        let e = Employee()
        e.name = textName.text
        e.id = Int(textId.text!)
        e.salary = Int(textSal.text!)
        empArray.append(e)
    }
    
    @IBAction func passClicked(_ sender: UIButton) {
        
        let dtvc = storyboard?.instantiateViewController(withIdentifier: "dvc")as!
        TableTableViewController
        
        dtvc.tempArray = empArray
        
        self.navigationController?.pushViewController(dtvc, animated: true)
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
