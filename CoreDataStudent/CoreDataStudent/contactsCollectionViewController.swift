//
//  contactsCollectionViewController.swift
//  CoreDataStudent
//
//  Created by Mac on 28/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit
import CoreData

private let reuseIdentifier = "Cell"

class contactsCollectionViewController: UICollectionViewController {

   
    @IBAction func btnBar(_ sender: UIBarButtonItem) {
        
        let ctdv = contactsTableViewController()
        
        self.navigationController?.pushViewController(ctdv, animated: true)
    }
    
    var context = AppDelegate().persistentContainer.viewContext
    
    var contactArray = [ContactsClass]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
        
       loadData()
    }
    func loadData(){
        
        let url = URL(string: "https://api.androidhive.info/contacts/")
        var request = URLRequest(url: url!)
        request.httpMethod = "GET"
        let session = URLSession.shared
        
        let task = session.dataTask(with: request)      //Closure
        {
            (data : Data?,response : URLResponse?,error : Error?) in
            
            if error != nil{
                print("Error")
            }
            
            do {
                let rootDictionary = try!
                    JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.mutableContainers)as! NSDictionary
                
                let contacts = rootDictionary.object(forKey: "contacts")as! NSArray
                
                for item in contacts {
                    let tempObj = item as! NSDictionary
                    
                    let obj = ContactsClass()
                    obj.name = tempObj.object(forKey: "name")as! String
                    obj.email = tempObj.object(forKey: "email")as! String
                    obj.address = tempObj.object(forKey: "address")as! String
                    obj.gender = tempObj.object(forKey: "gender")as! String
                    
                    self.contactArray.append(obj)  //Append in array
                    self.collectionView?.reloadData()
                }//For
            }//do
        }//task
        task.resume()
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   
    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return contactArray.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "view", for: indexPath)as! contactsCollectionViewCell
        let temp = contactArray[indexPath.row]
        cell.lblName.text = temp.name
        cell.lblEmail.text = temp.email
        cell.lblAddress.text = temp.address
        cell.lblGender.text = temp.gender

    
        
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let alert = UIAlertController(title: "Add Favourite", message: "Are u sure u want to Add", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Yes", style: .default, handler: {
            [weak alert] (_) in
             let object = NSEntityDescription.insertNewObject(forEntityName: "Contacts", into: self.context)as! Contacts
            let temp = self.contactArray[indexPath.row]
            object.name = temp.name
            object.email = temp.email
            object.address = temp.address
            object.gender = temp.gender
            try! self.context.save()
            
        })
        let action1 = UIAlertAction(title: "No", style: .cancel, handler: nil)
        alert.addAction(action)
        alert.addAction(action1)
        self.present(alert,animated: true,completion: nil)
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
