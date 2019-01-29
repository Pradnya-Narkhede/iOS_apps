//
//  SevenWondersViewController.swift
//  Touches
//
//  Created by Mac on 24/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit
import MapKit

class SevenWondersViewController: UIViewController,MKMapViewDelegate {
    
    
    
    @IBOutlet weak var map: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let point = CustomSevenWonder()
        point.title = "Great Wall of China"
        point.subtitle = "China"
        point.coordinate.latitude = 40.43
        point.coordinate.longitude = 116.57
        point.imageData = "Apple.jpeg"
        point.rating = "*****"
        point.desc = "Built between the 5th century B.C. and the 16th century, the Great Wall of China is a stone-and-earth fortification created to protect the borders of the Chinese Empire from invading Mongols"
        map.addAnnotation(point)
        
        let point1 = CustomSevenWonder()
        point1.title = "Christ the Redeemer Statue"
        point1.subtitle = "Rio de Janeiro"
        point1.coordinate.latitude = 22.95
        point1.coordinate.longitude = 43.21
        point1.imageData = "Apple.jpeg"
        point1.rating = "**"
        point1.desc = "Map "
        map.addAnnotation(point1)
        
        let point2 = CustomSevenWonder()
        point2.title = "Machu Picchu"
        point2.subtitle = "Peru"
        point2.coordinate.latitude = 13.16
        point2.coordinate.longitude = 72.54
        point2.imageData = "Apple.jpeg"
        point2.rating = "***"
        point2.desc = "Map "
        map.addAnnotation(point2)
        
        let point3 = CustomSevenWonder()
        point3.title = "Chichen Itza"
        point3.subtitle = "Yucatan Peninsula, Mexico"
        point3.coordinate.latitude = 20.68
        point3.coordinate.longitude = 88.56
        point3.imageData = "Apple.jpeg"
        point3.rating = "*****"
        point3.desc = "Map "
        map.addAnnotation(point3)
        
        let point4 = CustomSevenWonder()
        point4.title = "The Roman Colosseum"
        point4.subtitle = "Rome"
        point4.coordinate.latitude = 41.89
        point4.coordinate.longitude = 12.49
        point4.imageData = "Apple.jpeg"
        point4.rating = "****"
        point4.desc = "Map "
        map.addAnnotation(point4)
        
        let point5 = CustomSevenWonder()
        point5.title = "Taj Mahal"
        point5.subtitle = "India"
        point5.coordinate.latitude = 22.17
        point5.coordinate.longitude = 78.04
        point5.rating = "***"
        point5.imageData = "Apple.jpeg"
        point5.desc = "Map "
        map.addAnnotation(point5)
        
        let point6 = CustomSevenWonder()
        point6.title = "Petra"
        point6.subtitle = "Jordan"
        point6.coordinate.latitude = 30.32
        point6.coordinate.longitude = 35.44
        point6.imageData = "Apple.jpeg"
        point6.rating = "***"
        point6.desc = ""
        map.addAnnotation(point6)
        
        
        map.delegate = self
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        
        let pin =  MKPinAnnotationView(annotation: annotation, reuseIdentifier: nil)
        
        pin.pinTintColor = UIColor.brown
        
        let cpa = annotation as! CustomSevenWonder
        
        var imgData = UIImageView()
        
        imgData.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
        
        imgData.image = UIImage(named: cpa.imageData)
        
        pin.leftCalloutAccessoryView = imgData
        
        let btn = UIButton(type: .detailDisclosure)
        
        pin.rightCalloutAccessoryView = btn
        
        pin.canShowCallout = true
        
        return pin
        
    }
    
    func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView, calloutAccessoryControlTapped control: UIControl) {
        
        if control == view.rightCalloutAccessoryView as! UIControl{
            
            var tempResult = view.annotation
            
            let svc = storyboard?.instantiateViewController(withIdentifier: "swdvc")as! SevenWonderDisplayViewController
            
            svc.temp = tempResult
            
            self.navigationController?.pushViewController(svc, animated: true)
            
            
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
