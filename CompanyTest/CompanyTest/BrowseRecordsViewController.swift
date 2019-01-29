//
//  BrowseRecordsViewController.swift
//  CompanyTest
//
//  Created by Vaibhav Narkhede on 06/01/19.
//  Copyright © 2019 Pradnya. All rights reserved.
//

import UIKit
import CoreData

class BrowseRecordsViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var context = AppDelegate().persistentContainer.viewContext
    
    //    var arr = ["HI","dfb","fvg","gbgd"]
    //     var arr1 = ["HId","dfbv","fvgfv","gbgdvc"]
    var companyArray = [Company]()
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let req = NSFetchRequest<Company>.init(entityName: "Company")
        let result = try! context.fetch(req)
        companyArray = result
        
        
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return companyArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")as! CompanyTableViewCell
        
        cell.lblCompName.isUserInteractionEnabled = true
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(lblTaped(sender:)))
        tapGesture.numberOfTapsRequired = 1
        cell.lblCompName.addGestureRecognizer(tapGesture)
        
        let temp = companyArray[indexPath.row]
        cell.lblCompId.text = String(temp.comp_Id)
        cell.lblCompName.text = temp.comp_Name
        return cell
    }
    
    @objc func lblTaped(sender: UITapGestureRecognizer) {
        let touch = sender.location(in: tableView)
        if let indexPath = tableView.indexPathForRow(at: touch) {
            // Access the image or the cell at this index path
            print("Tapped cell index = \(indexPath.row)")
            let cell = tableView.cellForRow(at: indexPath) as! CompanyTableViewCell
            
            let svc = storyboard?.instantiateViewController(withIdentifier: "dtvc")as! DepartmentDiaplayTableViewController
            
            if let companyName = cell.lblCompName.text{
                svc.companyName = companyName
                self.navigationController?.pushViewController(svc, animated: true)
            }
        }
    }
    
}
