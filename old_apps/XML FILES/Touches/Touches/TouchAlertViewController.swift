//
//  TouchAlertViewController.swift
//  Touches
//
//  Created by Mac on 21/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class TouchAlertViewController: UIViewController {

    @IBOutlet weak var lblTitle: UILabel!
    
    @IBOutlet weak var lblName: UILabel!
    
    @IBOutlet weak var imgData: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblName.isUserInteractionEnabled = true
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(lblTaped))
        tapGesture.numberOfTapsRequired = 1
        
        lblName.addGestureRecognizer(tapGesture)
        
        imgData.isUserInteractionEnabled = true
        
        let leftswipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(imgSwiped))
        
        leftswipeGesture.direction = UISwipeGestureRecognizerDirection.left
        
        imgData.addGestureRecognizer(leftswipeGesture)
        
        let rightswipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(imgSwipedright))
        
        rightswipeGesture.direction = UISwipeGestureRecognizerDirection.right
       
        imgData.addGestureRecognizer(rightswipeGesture)


    }
    
    @objc func lblTaped(){
        
        let alert = UIAlertController(title: "Alert", message: "Sucessfully", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        self.present(alert,animated: true,completion: nil)

    }
    @objc func imgSwiped(_ recognizer : UISwipeGestureRecognizer){
        
        if recognizer.direction == UISwipeGestureRecognizerDirection.left {
            imgData.backgroundColor = UIColor.red
        }
       
    }
    @objc func imgSwipedright(_ recognizer : UISwipeGestureRecognizer){
        if recognizer.direction == UISwipeGestureRecognizerDirection.right {
            imgData.backgroundColor = UIColor.yellow
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
