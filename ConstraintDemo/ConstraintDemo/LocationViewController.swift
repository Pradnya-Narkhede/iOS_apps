//
//  LocationViewController.swift
//  ConstraintDemo
//
//  Created by Mac on 07/01/19.
//  Copyright © 2019 Pradnya. All rights reserved.
//

import UIKit
import CoreLocation

class LocationViewController: UIViewController,CLLocationManagerDelegate {

   
    let loc = CLLocationManager()
    
    @IBOutlet weak var lblLat: UILabel!
    
    
    
    @IBOutlet weak var lblLong: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loc.delegate = self
        
        loc.requestWhenInUseAuthorization()

        
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        if status == CLAuthorizationStatus.authorizedWhenInUse{
            loc.startUpdatingLocation()
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let l = locations[0]
        
        lblLat.text = String.init(format: "Lattitude : %f", (l.coordinate.latitude))
          lblLong.text = String.init(format: "Longitude : %f", (l.coordinate.longitude))
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Error : \(error)")
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
