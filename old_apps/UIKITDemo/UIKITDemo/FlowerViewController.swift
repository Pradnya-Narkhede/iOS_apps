//
//  FlowerViewController.swift
//  UIKITDemo
//
//  Created by Mac on 07/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class FlowerViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{
   
    var table : UITableView!
    var flowerarray = ["Rose","Lotus","Hibiuscus"]
    var imagearray = ["Apple.jpeg","Orange.jpg","mango.jpg"]
    var imageData : UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table = UITableView()
        table.frame = CGRect(x: 40, y: 40, width: 300, height: 300)
        table.dataSource = self
        table.delegate = self
        self.view.addSubview(table)
        
        }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let temp = flowerarray[indexPath.row]
        let temp1 = imagearray[indexPath.row]
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        cell.textLabel?.text = temp
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let temp = flowerarray[indexPath.row]
        let temp1 = imagearray[indexPath.row]
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        cell.textLabel?.text = temp
         imageData = UIImageView()
        //imageData.frame = CGRect(x: 80, y: 330, width: 250, height: 150)

        imageData.frame = UIScreen.main.bounds
        imageData.image = UIImage(named : "\(temp1)")
        self.view.addSubview(imageData)
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
