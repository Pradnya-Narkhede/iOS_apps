//
//  OneViewController.swift
//  Designing
//
//  Created by Mac on 12/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class OneViewController: UIViewController {

    @IBOutlet weak var txtData: UITextField!
    
    
    @IBAction func buttonClicked(_ sender: Any) {
        
//        let svc = storyboard?.instantiateViewController(withIdentifier: "tvc")as! TwoViewController
//        
//        svc.temp = txtData.text
//        
//        self.navigationController?.pushViewController(svc, animated: true)
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    //For segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "seg" {
            let svc = segue.destination as! TwoViewController
            svc.temp = txtData.text
        }
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
