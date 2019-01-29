//
//  TryViewController.swift
//  NotificationDemo
//
//  Created by Mac on 03/01/19.
//  Copyright © 2019 Pradnya. All rights reserved.
//

import UIKit

class TryViewController: UIViewController {

    
    
    @IBOutlet weak var slider: UISlider!
    
    @IBAction func clickBtn(_ sender: UIButton) {
        Thread.detachNewThread {
            
        
        let alert = UIAlertController(title: "Alert", message: "Data Saved", preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(action)
        self.present(alert,animated: true,completion: nil)
        var n = 10
        for i in 1..<n {
            print(i)
            sleep(1)
        }
    }
}
    
    
    
    @IBAction func slider(_ sender: UISlider) {

       lblData.text = String(slider.value)
        
    }
    
    @IBOutlet weak var lblData: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
