//
//  WebserviceMapViewController.swift
//  Touches
//
//  Created by Mac on 24/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit
import MapKit

class WebserviceMapViewController: UIViewController,MKMapViewDelegate {
    
    var shopArray = [SweetShop]()
    @IBOutlet weak var map1: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
        
    }
    
    func loadData(){
        
        let url = URL(string: "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=18.509118,73.832644&radius=500&types=shop&name=sweet&key=AIzaSyAuGEGHwpBK0iPt0Qxp_2s_vsVfbvDfH28")
        
        
        var request = URLRequest(url: url!)
        
        request.httpMethod = "GET"
        
        let session = URLSession.shared
        
        let task = session.dataTask(with: request){
            
            (data : Data?,response : URLResponse?,error : Error?) in
            
            if error != nil{
                print("Error")
            }
            do {
                let rootDictionary = try!
                    JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.mutableContainers) as!
                NSDictionary
                
                let result = rootDictionary.object(forKey: "results") as! NSArray
                
                for item in result {
                    
                    var tempObj = item as! NSDictionary
                    let obj = SweetShop()
                    
                    var geometryObj = tempObj.object(forKey: "geometry")as! NSDictionary
                    
                    var locationObj = geometryObj.object(forKey: "location")as! NSDictionary
                    obj.coordinate.latitude = locationObj.object(forKey: "lat")as! Double
                    obj.coordinate.longitude = locationObj.object(forKey: "lng")as! Double
                    
                    obj.imgUrl = tempObj.object(forKey: "icon")as! String
                    obj.title = tempObj.object(forKey: "name")as! String
                    obj.subtitle = tempObj.object(forKey: "vicinity")as! String
                    
                    let imageData = try! Data.init(contentsOf: URL(string: obj.imgUrl)!)
                    obj.icon = UIImage(data: imageData)
                    self.map1.addAnnotation(obj)
                    self.map1.delegate = self
                    self.shopArray.append(obj)
                    
                    
                }
                
            }
            
        }
        
        task.resume()
        
        
        
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        
        let pin =  MKPinAnnotationView(annotation: annotation, reuseIdentifier: nil)
        
        pin.pinTintColor = UIColor.brown
        
        let cpa = annotation as! SweetShop
        
        let imgData = UIImageView()
        
        imgData.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
        
        imgData.image = UIImage(named: cpa.imgUrl)
        
        pin.leftCalloutAccessoryView = imgData
        
        let btn = UIButton(type: .detailDisclosure)
        
        pin.rightCalloutAccessoryView = btn
        
        pin.canShowCallout = true
        
        return pin
        
    }
    
    func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView, calloutAccessoryControlTapped control: UIControl) {
        
        if control == view.rightCalloutAccessoryView as! UIControl{
            
            var tempResult = view.annotation
            
            let svc = storyboard?.instantiateViewController(withIdentifier: "wmdvc")as! WebserviceMapDispalyViewController
            
            svc.temp = tempResult
            
            self.navigationController?.pushViewController(svc, animated: true)
            
            
        }
    }
    
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
        
}
