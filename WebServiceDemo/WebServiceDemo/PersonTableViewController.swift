//
//  PersonTableViewController.swift
//  WebServiceDemo
//
//  Created by Mac on 20/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class PersonTableViewController: UITableViewController {
    
    var personArray = [Person]()
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
    }
    
    func loadData(){
        
        let url = URL(string: "http://bitcodeindia.com/android/getAllPeople.php?cmd=get")
        var request = URLRequest(url: url!)
        request.httpMethod = "GET"
        let session = URLSession.shared
        
        let task = session.dataTask(with: request)
            {(data : Data?,response : URLResponse?,error : Error?) in    //Closure
                if error != nil{
                    print("Error")
                }
                do {
                    let rootDictionary = try!
                        JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.mutableContainers) as!
                    NSDictionary
                    
                    let result = rootDictionary.object(forKey: "result")as! NSArray
                    
                    for item in result {
                        
                        var tempObj = item as! NSDictionary
                        
                        let obj = Person()
                        obj.name = tempObj.object(forKey: "person_name")as! String
                        obj.id = tempObj.object(forKey: "person_id")as! String
                        obj.imgUrl = tempObj.object(forKey: "person_image")as! String
                        
                        let imageData = try! Data.init(contentsOf: URL(string: obj.imgUrl)!)
                        obj.imgData = UIImage(data: imageData)
                        
                        self.personArray.append(obj)
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
        return personArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        let temp = personArray[indexPath.row]
        cell.textLabel?.text = temp.name
        cell.detailTextLabel?.text = temp.id
        cell.imageView?.image = temp.imgData
        return cell
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
