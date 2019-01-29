//
//  DogTableViewController.swift
//  DogWebservice
//
//  Created by Mac on 22/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class DogTableViewController: UITableViewController {
    
    var dogArray = [Dog]()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
    }
    
    func loadData(){
        
        let url = URL(string: "http://bitcode.info/ws_ios_assignment/ws_dog_info.php")

        
        var request = URLRequest(url: url!)
        
        request.httpMethod = "GET"
        let session = URLSession.shared
        let task = session.dataTask(with: request){
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
                    let obj = Dog()
                    obj.breed = tempObj.object(forKey : "breed") as! String
                    obj.classification = tempObj.object(forKey : "Higher classification")as! String
                    obj.lifeSpan = tempObj.object(forKey: "Life span")as! String
                    obj.Temperament = tempObj.object(forKey: "Temperament")as! String
                    obj.Height = tempObj.object(forKey : "Height")as! String
                    obj.Weight = tempObj.object(forKey : "Weight")as! String
                    obj.Colors = tempObj.object(forKey : "Colors")as! String
                    obj.info = tempObj.object(forKey : "info")as! String
                    
                    //Optional Binding
                    
                    obj.imgUrl = tempObj.object(forKey: "image")as! String?
                    //var temp : String? = obj.imgUrl
//                    if let imageData = obj.imgUrl
//                    
//                    {
//                        print(imageData)
                        let imageData = try! Data.init(contentsOf: URL(string: obj.imgUrl)!)
                        obj.imgData = UIImage(data: imageData)
//  
//                    }else
//                    {
//                        
//                        print("Nil")
//                    }
//                    
                    
                    self.dogArray.append(obj)  //Append in array
                    
                    self.tableView.reloadData()
                    
                }
            }
        }
        task.resume()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return dogArray.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)as! DogTableViewCell
        let temp = dogArray[indexPath.row]
        cell.lblBreed.text = temp.breed
        cell.lblClassification.text = temp.classification
        cell.lblTemperament.text = temp.Temperament
        cell.imgData.image = temp.imgData
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let svc = storyboard?.instantiateViewController(withIdentifier: "ddvc")as! DogDisplayViewController
        svc.temp = dogArray[indexPath.row]
        self.navigationController?.pushViewController(svc, animated: true)
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
