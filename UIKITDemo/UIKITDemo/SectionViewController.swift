//
//  SectionViewController.swift
//  UIKITDemo
//
//  Created by Mac on 07/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class SectionViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var table : UITableView!
    var array = ["1","2","3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table = UITableView()
        table.frame = CGRect(x: 40, y: 40, width: 300, height: 250)
        table.delegate = self
        table.dataSource = self
        self.view.addSubview(table)
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
        return 2
        }
        if section == 1 {
            return 3
        }
        if section == 2{
            return 2
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Section 0"
        }
        if section == 1 {
            return "Section 1"
        }
        
        return "Section 2"
    }
//    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
//        if section == 0 {
//            return "Section 0"
//        }
//        if section == 1 {
//            return "Section 1"
//        }
//        
//        return "Section 2"
//    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->    UITableViewCell {
         let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        if indexPath.section == 0{
            if indexPath.row == 0 {
                cell.textLabel?.text = "sec row0"
                return cell
            }else {
                if indexPath.row == 1{
                    cell.textLabel?.text = "sec row1"
                    return cell
                }
            }
        }
        if indexPath.section == 1{
            
            if indexPath.row == 0 {
                
                cell.textLabel?.text = "sec 1 "
                return cell
            }else {
                if indexPath.row == 1{
                    cell.textLabel?.text = "Hi2"
                    return cell
                }
                else {
                    if indexPath.row == 2{
                        cell.textLabel?.text = "dg"
                    }
                }
            }
        }
        if indexPath.section == 2{
            if indexPath.row == 0 {
                cell.textLabel?.text = "sec 2"
                return cell
            }else {
                if indexPath.row == 1{
                    cell.textLabel?.text = "Hi"
                    return cell
                }
            }
        }

       return cell
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
