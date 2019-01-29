//
//  MapViewController.swift
//  Touches
//
//  Created by Mac on 21/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController,MKMapViewDelegate {

    @IBOutlet weak var map: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      let point = MKPointAnnotation()
        point.title = "Kothrud"
        point.subtitle = "pune"
        point.coordinate.latitude = 18.52
        point.coordinate.longitude = 73.81
        map.addAnnotation(point)
        map.delegate = self
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        
        let pin = MKPinAnnotationView(annotation: annotation, reuseIdentifier: nil)
        
        pin.pinTintColor = UIColor.brown
        
        var imgData = UIImageView()
        imgData.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
        imgData.image = UIImage(named: "Apple.jpeg")
        
        pin.leftCalloutAccessoryView = imgData
        pin.canShowCallout = true
        
        return pin
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
