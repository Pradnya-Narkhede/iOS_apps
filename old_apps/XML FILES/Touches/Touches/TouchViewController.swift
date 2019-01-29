//
//  TouchViewController.swift
//  Touches
//
//  Created by Mac on 21/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class TouchViewController: UIViewController {

    @IBOutlet weak var lblData: UILabel!
    
    @IBOutlet weak var imgData: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblData.isUserInteractionEnabled = true
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(lblTaped))
        tapGesture.numberOfTapsRequired = 2
        lblData.addGestureRecognizer(tapGesture)
        
        imgData.isUserInteractionEnabled = true
        
        let swipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(imgSwiped))
        
        swipeGesture.direction = UISwipeGestureRecognizerDirection.left
        imgData.addGestureRecognizer(swipeGesture)
        
    }
    @objc func lblTaped() {
        print("Tapped")
    }
    @objc func imgSwiped(_ recognizer : UISwipeGestureRecognizer)
    {
        if recognizer.direction == UISwipeGestureRecognizerDirection.left{
            print("Left Swiped")
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
