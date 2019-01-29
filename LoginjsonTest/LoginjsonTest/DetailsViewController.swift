//
//  DetailsViewController.swift
//  LoginjsonTest
//
//  Created by Mac on 25/01/19.
//  Copyright © 2019 Pradnya. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    var  temp : Login!
    //var loginArray1 = [Login]()
    
    @IBOutlet weak var lblName: UILabel!
    
    
    @IBOutlet weak var lblcatchPhrase: UILabel!
    @IBOutlet weak var lblcname: UILabel!
    @IBOutlet weak var lblCompany: UILabel!
    @IBOutlet weak var lblWebsite: UILabel!
    @IBOutlet weak var lblPhone: UILabel!
    @IBOutlet weak var lblContact: UILabel!
    @IBAction func btnShowLocation(_ sender: UIButton) {
        let mvc = storyboard?.instantiateViewController(withIdentifier: "mvc")as! Map1ViewController
        mvc.temp = temp
        self.navigationController?.pushViewController(mvc, animated: true)
    }
    @IBOutlet weak var lblSuite: UILabel!
    @IBOutlet weak var lblZipCode: UILabel!
    @IBOutlet weak var lblId: UILabel!
    
    @IBOutlet weak var lblLong: UILabel!
    
    @IBOutlet weak var lblLat: UILabel!
    @IBOutlet weak var lblusername: UILabel!
    
    @IBOutlet weak var lblEmail: UILabel!
    
    @IBOutlet weak var lblnameDisplay: UILabel!
    
    
    @IBOutlet weak var lblIdDisp: UILabel!
    
    
    @IBOutlet weak var lblEmailDisp: UILabel!
    @IBOutlet weak var lblusernameDisp: UILabel!
    
    @IBOutlet weak var lblCity: UILabel!
    @IBOutlet weak var lblStreet: UILabel!
    
    @IBOutlet weak var lblAddress: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        lblnameDisplay.text = temp.name
        lblIdDisp.text = String(temp.id)
        lblusernameDisp.text = temp.username
        lblEmailDisp.text = temp.email
        lblStreet.text = temp.street
        lblSuite.text = temp.suit
        lblCity.text = temp.city
        lblZipCode.text = temp.zipcode
        lblLat.text = String(temp.lat)
        lblLong.text = String(temp.lng)
        lblPhone.text = temp.phone
        lblWebsite.text = temp.website
        lblcname.text = temp.cname
        lblcatchPhrase.text = temp.catchPhrase
    
        
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
