//
//  CartoonTableViewController.swift
//  WebServiceDemo
//
//  Created by Mac on 20/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class CartoonTableViewController: UITableViewController {
    
    var cartoonArray = [Cartoon]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadData()
    }
    
    func loadData(){
        let url = URL(string: "http://bitcode.info/android/webservices/cartoons.php?cmd=get&type=all")
        var request = URLRequest(url: url!)
         request.httpMethod = "GET"
        let session = URLSession.shared
        let task = session.dataTask(with: request)
        {(data : Data?,response : URLResponse?,error : Error?) in
            if error != nil{
                print("Error")
            }
            do {
                let rootArray = try!
                    JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.mutableContainers) as!
                NSArray
                for item in rootArray {
                   var tempObj = item as! NSDictionary
                    let obj = Cartoon()
                    obj.name = tempObj.object(forKey: "name") as! String
                   
                    var dateObj = tempObj.object(forKey: "dob")as! NSDictionary
                       obj.day = dateObj.object(forKey: "day")as! Int
                        obj.month = dateObj.object(forKey: "mon")as! Int
                        obj.year = dateObj.object(forKey: "year")as! Int
                    
                            
                            obj.company = tempObj.object(forKey: "company")as! String
                   
                            obj.imgUrl = tempObj.object(forKey: "imageurl")as! String
                            obj.description = tempObj.object(forKey: "description")as! String
                    
                    let imageData = try! Data.init(contentsOf: URL(string: obj.imgUrl)!)
                    obj.imgData = UIImage(data: imageData)
                    
                    self.cartoonArray.append(obj)
                    self.tableView.reloadData()

                }
            }

        }
        task.resume()

                
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return cartoonArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)as!
        CartoonTableViewCell
        let temp = cartoonArray[indexPath.row]
        cell.lblName.text = temp.name
        cell.lblDob.text = String("\(temp.day!)/\(temp.month!)/\(temp.year!)")
    
        cell.lblCompany.text = temp.company
        cell.imgData.image = temp.imgData
        
        

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cdvc = storyboard?.instantiateViewController(withIdentifier: "cdvc")as! CartoonDisplayViewController
        cdvc.dtemp = cartoonArray[indexPath.row]
        self.navigationController?.pushViewController(cdvc, animated: true)
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
