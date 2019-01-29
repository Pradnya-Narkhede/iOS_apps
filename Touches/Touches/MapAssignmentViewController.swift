//
//  MapAssignmentViewController.swift
//  Touches
//
//  Created by Mac on 22/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit
import MapKit

class MapAssignmentViewController: UIViewController,MKMapViewDelegate {

    
    
    
    @IBOutlet weak var map: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let point = CustomPointAnnotation()
        point.title = "Kothrud"
        point.subtitle = "Pune"
        point.coordinate.latitude = 18.52
        point.coordinate.longitude = 73.81
        point.imageData = "Apple.jpeg"
        point.description1 = "Map "
        map.addAnnotation(point)
        map.delegate = self
        
    }
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        
        let pin = MKPinAnnotationView(annotation: annotation, reuseIdentifier: nil)
       
        pin.pinTintColor = UIColor.blue
        
        let cpa = annotation as! CustomPointAnnotation
        var imgData = UIImageView()
        
        imgData.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
        
        imgData.image = UIImage(named: cpa.imageData)
       
        pin.leftCalloutAccessoryView = imgData
        
        var btn = UIButton(type: .detailDisclosure)
        pin.rightCalloutAccessoryView = btn
        
        pin.canShowCallout = true
        
        return pin
    }
    
    func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView, calloutAccessoryControlTapped control: UIControl) {
        
        if control == view.rightCalloutAccessoryView as! UIControl{
            
            var tempResult = view.annotation
            
            let svc = storyboard?.instantiateViewController(withIdentifier: "mdvc")as! MapDisplayViewController
            
            svc.temp = tempResult
            
            self.present(svc,animated : true,completion : nil)
            
        }
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
