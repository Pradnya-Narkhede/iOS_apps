//
//  WebserviceMapViewController.swift
//  Touches
//
//  Created by Mac on 24/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit
import MapKit

class WebserviceMapViewController: UIViewController {
    
    
    @IBOutlet weak var map1: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    func loadData(){
        
        let url = URL(string: "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=18.509118,73.832644&radius=500&types=shop&name=sweet&key=AIzaSyAuGEGHwpBK0iPt0Qxp_2s_vsVfbvDfH28")
        
        
        var request = URLRequest(url: url!)
        
        request.httpMethod = "GET"
        let session = URLsession.shared
        let task = session.dataTask(with: request){
            (data : Data?,response : URLResponse?,error : Error?) in
            
            if error != nil{
                print("Error")
            }
            do {
                let rootDictionary = try!
                    JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.mutableContainers) as!
                NSDictionary
                
                
            }

        
    

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    }
