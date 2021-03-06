//
//  BookDataTableViewController.swift
//  XmlParser
//
//  Created by Mac on 19/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class BookDataTableViewController: UITableViewController,XMLParserDelegate {
    
    var parser : XMLParser!
    var bookObj : Book!
    var bookArray = [Book]()
    var response : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.url(forResource: "Books", withExtension: "xml")
        parser = XMLParser(contentsOf: path!)
        parser.delegate = self
        parser.parse()


    }
    
    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:]) {
        if elementName == "Book"{
            bookObj = Book()
        }
        if elementName == "id"{
            response = String()
        }
        if elementName == "Name"{
            response = String()
        }
    }

    func parser(_ parser: XMLParser, foundCharacters string: String) {
        
        response = string
    }
    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        if elementName == "id"{
            bookObj.id = Int(response)
        }
        if elementName == "Name"{
            bookObj.name = response
        }
        if elementName == "Book"{
            bookArray.append(bookObj)
        }
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
        return bookArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        let temp = bookArray[indexPath.row]
        cell.textLabel?.text = String(temp.id)
        cell.detailTextLabel?.text = temp.name
        
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
