//
//  LoginTableViewController.swift
//  LoginjsonTest
//
//  Created by Mac on 25/01/19.
//  Copyright © 2019 Pradnya. All rights reserved.
//

import UIKit

class LoginTableViewController: UITableViewController {

    var loginArray = [Login]()

    override func viewDidLoad() {
        super.viewDidLoad()

         loadData()
    }
    
    func loadData(){
        
        let url = URL(string: "http://jsonplaceholder.typicode.com/users")
        
        
        var request = URLRequest(url: url!)
        
        request.httpMethod = "GET"
        let session = URLSession.shared
        let task = session.dataTask(with: request)
        {
            (data : Data?,response : URLResponse?,error : Error?) in
            
            if error != nil{
                print("Error")
            }
            do {
                let rootArray = try!
                     JSONSerialization.jsonObject(with: data!, options:JSONSerialization.ReadingOptions.mutableContainers) as! NSArray
                    
                
                
                for item in rootArray {
                    var tempObj = item as! NSDictionary
                    let obj = Login()
                    obj.id = tempObj.object(forKey : "id") as! Int
                    obj.name = tempObj.object(forKey : "name") as! String
                    obj.username = tempObj.object(forKey : "username") as! String
                    obj.email = tempObj.object(forKey : "email") as! String
                    
                    obj.phone = tempObj.object(forKey : "phone") as! String
                    obj.website = tempObj.object(forKey : "website") as! String
                    //Adress
                    var addrObj = tempObj.object(forKey: "address")as! NSDictionary
                    obj.street = addrObj.object(forKey: "street")as! String
                    obj.suit = addrObj.object(forKey: "suite") as! String
                    obj.city = addrObj.object(forKey: "city")as! String
                    obj.zipcode = addrObj.object(forKey: "zipcode")as! String
                    //geo in adress dictionary
                    var geoObj = addrObj.object(forKey: "geo")as! NSDictionary
                    //obj.coordinate.latitude = geoObj.object(forKey: "lat")as! String
                    //obj.coordinate.longitude = = geoObj.object(forKey: "lng")as! String
                    obj.lat = geoObj.object(forKey: "lat")as! String
                    obj.lng = geoObj.object(forKey: "lng")as! String
                    
                    //Company
                    var compObj = tempObj.object(forKey: "company")as! NSDictionary
                    
                    obj.cname = compObj.object(forKey: "name")as! String
                    obj.catchPhrase = compObj.object(forKey: "catchPhrase")as! String
                    
                    
                    
                    
                   

                    
                    
                    
                    self.loginArray.append(obj)  //Append in array
                    
                    DispatchQueue.main.async {
                        self.tableView.reloadData()
                    }
                    
                }//for
            }//do
        }//closure
        task.resume()
    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }

    
    override func numberOfSections(in tableView: UITableView) -> Int {
       
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return loginArray.count
    }
   
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "List"
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)as! LoginTableViewCell
        let temp = loginArray[indexPath.row]
        cell.lblIdDisplay.text = String(temp.id)
        cell.lblnameDisplay.text = temp.name
        cell.lblPhoneDisplay.text = String(temp.phone)
       

        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let dvc = storyboard?.instantiateViewController(withIdentifier: "dvc")as! DetailsViewController
        dvc.temp = loginArray[indexPath.row]
        self.navigationController?.pushViewController(dvc, animated: true)
    }


    
}
