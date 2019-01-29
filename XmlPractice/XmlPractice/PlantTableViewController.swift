//
//  PlantTableViewController.swift
//  XmlPractice
//
//  Created by Mac on 20/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class PlantTableViewController: UITableViewController, XMLParserDelegate {
    
    var parser : XMLParser!
    var plantArray = [Plant]()
    var response : String!
    var plantObj : Plant!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let path = Bundle.main.url(forResource: "Plant", withExtension:"xml")
        parser = XMLParser(contentsOf: path!)
        parser.delegate = self
        parser.parse()
        
    }
    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:]) {
        if elementName == "PLANT" {
            plantObj = Plant()
        }
        if elementName == "COMMON"{
            response = String()
        }
        if elementName == "BOTANICAL"{
            response = String()
        }
        if elementName == "ZONE"{
            response = String()
        }
        if elementName == "LIGHT"{
            response = String()
        }
        if elementName == "PRICE"{
            response = String()
        }
        if elementName == "AVAILABILITY"{
            response = String()
        }
    }
    
    func parser(_ parser: XMLParser, foundCharacters string: String) {
        response = string
    }
    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        if elementName == "COMMON"{
            plantObj.common = response
        }
        if elementName == "BOTANICAL"{
            plantObj.Botnical = response
        }
        if elementName == "ZONE"{
            plantObj.zone = Int(response)
        }
        if elementName == "LIGHT"{
            plantObj.light = response
        }
        if elementName == "PRICE"{
            plantObj.price = response
        }
        if elementName == "AVAILABILITY"{
            plantObj.avalibility = Int(response)
        }
        if elementName == "PLANT" {
            plantArray.append(plantObj)
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
        return plantArray.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        let temp = plantArray[indexPath.row]
        cell.textLabel?.text = temp.common
        cell.detailTextLabel?.text = temp.Botnical
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let svc = storyboard?.instantiateViewController(withIdentifier: "pdvc")as! PlantDisplayViewController
        svc.plant = plantArray[indexPath.row]
        self.navigationController?.pushViewController(svc, animated: true)
    }
    
    
}
