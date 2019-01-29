//
//  TableAssignmentViewController.swift
//  UIKITDemo
//
//  Created by Mac on 07/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class TableAssignmentViewController: UIViewController , UITableViewDelegate,UITableViewDataSource{

    var table : UITableView!
    var namearray = ["Pradnya","Kajal","Sneha","Rishikesh","Kartik"]
    var emailarray = ["P@gmail.com","K@gmail.com","S@gmail.com","R@gmail.com","K@gmail.com"]

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
        return namearray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let temp = namearray[indexPath.row]
        let temp1 = emailarray[indexPath.row]
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        cell.textLabel?.text = temp
        cell.detailTextLabel?.text = temp1
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        var temp = namearray[indexPath.row]
        
//        if indexPath.row == 0{
//              temp.removeAll()
//        }
//        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
//        cell.textLabel?.text = temp
        }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let temp = namearray[indexPath.row]
        let temp1 = emailarray[indexPath.row]
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        cell.textLabel?.text = temp
        
        
        let alert = UIAlertController(title : "Alert", message: "\(temp) \n \(temp1)", preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
        let action1 = UIAlertAction(title: "Cancel", style: .default, handler: nil)
        alert.addAction(action)
        alert.addAction(action1)
        self.present(alert,animated: true,completion: nil)

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
