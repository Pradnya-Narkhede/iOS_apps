//
//  ListViewController.swift
//  UIKITDemo
//
//  Created by Mac on 07/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class ListViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var table : UITableView!
    var productarray = [Model]()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        table = UITableView()
        table.frame = CGRect(x: 50, y: 300, width: 300, height: 300)
        table.delegate = self
        table.dataSource = self
        self.view.addSubview(table)
        
        let p1 = Model()
        p1.prodname = "Fridge"
        p1.prodid = 2
        p1.quantity = 8000
        productarray.append(p1)
        
        let p2 = Model()
        p2.prodname = "Washing Machine"
        p2.prodid = 2
        p2.quantity = 16000
        productarray.append(p2)
        
        let p3 = Model()
        p3.prodname = "Color"
        p3.prodid = 2
        p3.quantity = 6000
        productarray.append(p3)

    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productarray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let temp = productarray[indexPath.row]
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        cell.textLabel?.text = temp.prodname
        cell.detailTextLabel?.text = String(temp.quantity)
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
