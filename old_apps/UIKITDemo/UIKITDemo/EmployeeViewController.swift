//
//  EmployeeViewController.swift
//  UIKITDemo
//
//  Created by Mac on 07/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class EmployeeViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
 
    var table : UITableView!
    var empArray = [Employee]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table = UITableView(frame : CGRect(x: 50, y: 120, width: 300, height: 300))
        table.dataSource = self
        table.delegate = self
        self.view.addSubview(table)
        
        var e1 = Employee()
        e1.empName = "Pradnya"
        e1.empId = 2
        e1.empDept = "Computer"
        empArray.append(e1)
        
        var e2 = Employee()
        e2.empName = "Sneha"
        e2.empId = 3
        e2.empDept = "Computer"
        empArray.append(e2)
        
        self.table.register(UITableViewCell.self,forCellReuseIdentifier : "cell")
        
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return empArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let temp = empArray[indexPath.row]
        
        //let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        //let cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        cell.textLabel?.text = temp.empName
        cell.detailTextLabel?.text = String(temp.empId)
        
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
