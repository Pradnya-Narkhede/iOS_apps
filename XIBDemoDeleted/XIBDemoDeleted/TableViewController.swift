//
//  TableViewController.swift
//  XIBDemoDeleted
//
//  Created by Mac on 10/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class TableViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var infoarray = [Model]()
   //var fruitarray = ["Apple","Mango","Banana"]
    
    @IBOutlet weak var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        table.dataSource = self
        table.delegate = self
        
        var m1 = Model()
        m1.name = "Pradnya"
        m1.id = 2
        m1.address = "Bijalinagar"
        infoarray.append(m1)
        
        var m2 = Model()
        m2.name = "Sneha"
        m2.id = 3
        m2.address = "Hadapsar"
        infoarray.append(m2)
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return infoarray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let temp = infoarray[indexPath.row]
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        cell.textLabel?.text = temp.name
        cell.detailTextLabel?.text = String(temp.id)
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
