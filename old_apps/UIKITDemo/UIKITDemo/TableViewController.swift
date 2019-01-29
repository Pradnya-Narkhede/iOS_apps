//
//  TableViewController.swift
//  UIKITDemo
//
//  Created by Mac on 06/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class TableViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var table : UITableView!
    //var array = ["c","cpp","java","ios"]
    var color = ["Red","Green","Gray","Yellow","Orange"]

    override func viewDidLoad() {
        super.viewDidLoad()
        table = UITableView(frame : CGRect(x: 50, y: 120, width: 300, height: 300))
        table.dataSource = self
        table.delegate = self
        self.view.addSubview(table)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//      return array.count
         return color.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let temp = array[indexPath.row]
        let temp = color[indexPath.row]
        
        //let cell = UITableViewCell()
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)

        cell.textLabel?.text = temp
//        cell.detailTextLabel?.text = "Apple"
//        cell.imageView?.image = UIImage(named: "Apple.jpeg")
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //var temp1 =
        let temp = color[indexPath.row]
        switch(temp){
        case "Red" :
            self.view.backgroundColor = UIColor.red
        case "Green" :
            self.view.backgroundColor = UIColor.green
        case "Gray" :
            self.view.backgroundColor = UIColor.gray
        case "Yellow" :
            self.view.backgroundColor = UIColor.yellow
        case "Orange" :
            self.view.backgroundColor = UIColor.orange
        default :
            self.view.backgroundColor = UIColor.cyan
        }//Switch
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
