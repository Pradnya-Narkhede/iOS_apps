//
//  CityViewController.swift
//  UIKITDemo
//
//  Created by Mac on 10/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class CityViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    var tableView : UITableView!
    var arrOfCities = ["Pune","Mumbai"]
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        let bounds = UIScreen.main.bounds
        let width = bounds.size.width
        let height = bounds.size.height
        
        tableView = UITableView()
        tableView.frame = CGRect(x: 0, y: 0, width: width, height: height)
        tableView.delegate = self
        tableView.dataSource = self
        self.view.addSubview(tableView)
        
        //Navigation
        
        self.navigationItem.title = "List Of Cities"
        let rbtn = UIBarButtonItem(title: "+", style: .plain, target: self, action: #selector(showAlertView))
        
        navigationItem.rightBarButtonItem = rbtn
    }

    @objc func showAlertView() {
        
        let alert = UIAlertController(title : "Alert", message: "Enter New City", preferredStyle: .alert)
        
        alert.addTextField { (textField) in
            textField.placeholder = "Enter City Name"
        }
        
        let action = UIAlertAction(title: "No", style: .default, handler: nil)
        
        alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: { [weak alert] (_) in
            let textField = alert?.textFields![0] // Force unwrapping because we know it           exists.
            let tValue = textField?.text ?? ""
            print("Text field: \(String(describing: tValue))")
            self.arrOfCities.append(tValue)
            self.tableView.reloadData()
        }))
        
        alert.addAction(action)
        
        self.present(alert,animated: true,completion: nil)
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrOfCities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let temp = arrOfCities[indexPath.row]
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        cell.textLabel?.text = temp
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
