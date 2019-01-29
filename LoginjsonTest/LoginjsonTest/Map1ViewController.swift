//
//  Map1ViewController.swift
//  LoginjsonTest
//
//  Created by Mac on 25/01/19.
//  Copyright © 2019 Pradnya. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class Map1ViewController: UIViewController,MKMapViewDelegate {
   var temp : Login!
    @IBOutlet weak var map: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let point = MKPointAnnotation()
        point.title = temp.name//"pune"//temp.lat
        point.subtitle = "mumbai"//temp.lng
        point.coordinate = CLLocationCoordinate2D(latitude: Double(temp.lng) ?? 0.0, longitude: Double(temp.lat) ?? 0.0)
        print(point.coordinate)
        let region = MKCoordinateRegion(center: point.coordinate, span: MKCoordinateSpan(latitudeDelta: 1.0, longitudeDelta: 1.0))
        
        //set region on the map
        map.setRegion(map.regionThatFits(region), animated: true)
        map.addAnnotation(point)
        map.delegate = self
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
