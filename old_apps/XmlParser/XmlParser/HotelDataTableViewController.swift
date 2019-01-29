//
//  HotelDataTableViewController.swift
//  XmlParser
//
//  Created by Mac on 19/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class HotelDataTableViewController: UITableViewController, XMLParserDelegate {
    
    var parser : XMLParser!
    var hotelObj : Hotel!
    var foodArray = [Hotel]()
    var response : String!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.url(forResource: "hotel", withExtension: "xml")
        parser = XMLParser(contentsOf: path!)
        parser.delegate = self
        parser.parse()

           }
    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:]) {
        if elementName == "food"{
            hotelObj = Hotel()
        }
        if elementName == "name"{
            response = String()
        }
        if elementName == "price"{
            response = String()
        }
        if elementName == "description"{
            response = String()
        }
        if elementName == "calories"{
            response = String()
        }
    }
    
    func parser(_ parser: XMLParser, foundCharacters string: String) {
        response = string
    }
    
    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        if elementName == "name"{
            hotelObj.name = response
        }
        if elementName == "price"{
            hotelObj.price = response
        }
        if elementName == "description"{
            hotelObj.description = response
        }
        if elementName == "calories"{
            hotelObj.calories = Int(response)
        }
        if elementName == "food"{
            foodArray.append(hotelObj)
    }
    }
    override func
        
        
        didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return foodArray.count
    }

    
   override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)as!
        HotelDataTableViewCell

        let temp = foodArray[indexPath.row]
        cell.lblName.text = temp.name
        cell.lblPrice.text = temp.price
        cell.lblDescription.text = temp.description
        cell.lblCalories.text = String(temp.calories)

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
            let svc = storyboard?.instantiateViewController(withIdentifier: "hdvc")as! HotelDataDisplayViewController
            svc.temp = foodArray[indexPath.row]
            self.navigationController?.pushViewController(svc, animated: true)        
        
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
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
