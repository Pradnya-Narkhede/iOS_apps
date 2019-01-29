//
//  ConstraintViewController.swift
//  ConstraintDemo
//
//  Created by Mac on 07/01/19.
//  Copyright © 2019 Pradnya. All rights reserved.
//

import UIKit

class ConstraintViewController: UIViewController {

    var lbl = UILabel()
    var btn = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbl.text = "hdtgdsgystygdhdyhbvcdy5u5esafxseahdtgdsgystygdhdyhbvcdy5u5esafxseaahdtgdsgystygdhdyhbvcdy5u5esafxseaahdtgdsgystygdhdyhbvcdy5u5esafxseaahdtgdsgystygdhdyhbvcdy5u5esafxseaahdtgdsgystygdhdyhbvcdy5u5esafxseaahdtgdsgystygdhdyhbvcdy5u5esafxseaa"
        lbl.backgroundColor = UIColor.yellow
        lbl.numberOfLines = 0
        lbl.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        let cLeft = NSLayoutConstraint(item: lbl, attribute: .left, relatedBy: .equal, toItem: self.view, attribute: .left, multiplier: 1.0, constant: 10)
        
        let cRight = NSLayoutConstraint(item: lbl, attribute: .right, relatedBy: .equal, toItem: self.view, attribute: .right, multiplier: 1.0, constant: -10)
        
        let cTop = NSLayoutConstraint(item: lbl, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: 20)
        
        let cBottom = NSLayoutConstraint(item: lbl, attribute: .top, relatedBy: .equal, toItem: btn, attribute: .bottom, multiplier: 1.0, constant: 20)
        
        self.view.addConstraint(cLeft)
        self.view.addConstraint(cRight)
        self.view.addConstraint(cTop)
        self.view.addConstraint(cBottom)
        self.view.addSubview(lbl)
        
        btn.backgroundColor = UIColor.cyan
        
        btn.setTitle("Click", for: .normal)
        
        btn.translatesAutoresizingMaskIntoConstraints = false
        
        
        let bTop = NSLayoutConstraint(item: btn, attribute: .top, relatedBy: .equal, toItem: lbl, attribute: .bottom, multiplier: 1.0, constant: 10)
        
        
        
        let bCenterX = NSLayoutConstraint(item: btn, attribute: .centerX, relatedBy: .equal, toItem: lbl, attribute: .centerX, multiplier: 1.0, constant: 0)
        
        self.view.addConstraint(bTop)
        self.view.addConstraint(bCenterX)
        self.view.addSubview(btn)

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
