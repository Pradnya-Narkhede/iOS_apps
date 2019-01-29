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
    
    //var queue = OperationQueue()
    var queue = DispatchQueue(label: "imageDownload")
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        loadData()
        //Operation thread
//        NotificationCenter.default.addObserver(self, selector: #selector(imageDownload), name: NSNotification.Name(rawValue : "Some"), object: nil)
    }
    
    func imageDownload(){
        self.tableView.reloadData()
    }
    func loadData(){
        
        let url = URL(string: "http://bitcode.info/android/webservices/cartoons.php?cmd=get&type=all")
        
        var request = URLRequest(url: url!)
        
         request.httpMethod = "GET"
        
        let session = URLSession.shared
        
        let task = session.dataTask(with: request)   //Closure
            
        {
            (data : Data?,response : URLResponse?,error : Error?) in
            
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
                    
                  //  let imageData = try! Data.init(contentsOf: URL(string: obj.imgUrl)!)
                 // obj.imgData = UIImage(data: imageData)
                    
                    self.cartoonArray.append(obj)  //Append in array
                    
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
        
        //cell.imgData.image = temp.imgData
       
        //Operation queue
//        if temp.imgData == nil
//        {
//            let op = ImageDownloadOperation()
//            op.c = temp
//            queue.addOperation(op)
//            
//        
//        }
//        else
//        {
//            cell.imgData.image = temp.imgData
//        }
        
        //Block Operation
        
//        if temp.imgData == nil
//        {
//            let op = BlockOperation(block: { 
//                let imageUrl = temp.imgUrl
//                let imageData1 = try!
//                    Data.init(contentsOf: URL(string: imageUrl!)!)
//                temp.imgData = UIImage(data: imageData1)
//                DispatchQueue.main.async(execute : {
//                self.tableView.reloadData()
//                })
//            })
//            queue.addOperation(op)
//        }
//        else
//                {
//                    cell.imgData.image = temp.imgData
//                }
        
        //GCD Operation
        
        if temp.imgData == nil {
            queue.async{
            let data = try! Data.init(contentsOf: URL(string: temp.imgUrl)!)
            

            temp.imgData = UIImage(data: data)
            
            DispatchQueue.main.async(execute: { 
                self.tableView.reloadData()
            })
        }
        }
        else
            {
                cell.imgData.image = temp.imgData
            }

       return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cdvc = storyboard?.instantiateViewController(withIdentifier: "cdvc")as! CartoonDisplayViewController
        cdvc.dtemp = cartoonArray[indexPath.row]
        self.navigationController?.pushViewController(cdvc, animated: true)
    }
   
}
