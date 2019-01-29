//
//  MapViewController.swift
//  ProjectSafeSide
//
//  Created by Vaibhav Narkhede on 22/01/19.
//  Copyright © 2019 Pradnya Narkhede. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation
import CoreData


class MapViewController: UIViewController, CLLocationManagerDelegate,UISearchBarDelegate,MKMapViewDelegate {
    @IBOutlet weak var map: MKMapView!

    var context = AppDelegate().persistentContainer.viewContext
    var arrLoc = [PlaceLocation]()
    var latitude : [NSNumber] = []
//    var pNameArray = ["title" : Nal Stop", "title" : "Sonal hall", "title" : "Garware College", "title" : "SNDT", "title" : "Abhinav Squre", "title" : "Deccan", "title" : "Shivaji Nagar"]
    
    let arrOfLocations:[[String:Any]]  = [["title" : "Nal Stop","latitude": 18.5081,"longitude" : 73.8313],
        ["title" : "Sonal hall","latitude": 18.5105,"longitude" : 73.8352],
        ["title" : "Garware College","latitude": 18.5113,"longitude" : 73.8276],
        ["title" : "SNDT","latitude": 18.5087,"longitude" : 73.8536],
        ["title" : "Abhinav Squre","latitude": 18.5055,"longitude" : 73.8536],
        ["title" : "Deccan","latitude": 18.5176,"longitude" : 73.8417],
        ["title" : "Shivaji Nagar","latitude": 18.5308,"longitude" : 73.8475]
        ]
                                              

    
//    var latArray = ["latitude": 18.5081, "latitude" : 18.5105, "latitude" : 18.5113, "latitude" : 18.5087, "latitude" : 18.5055, "latitude" : 18.5176, "latitude" : 18.5308]
//
//    var longiArray = ["longitude" : 73.8313, "longitude": 73.8352, "longitude" : 73.8276, "longitude" : 73.8536, "longitude" : 73.8417,"longitude" : 73.8475]
    let manager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
        
        
        
        
        map.delegate = self
        
        for dict in arrOfLocations {
            let point = MKPointAnnotation()
            point.title = dict["title"] as! String
            //point.subtitle = "pune"
            point.coordinate.latitude = CLLocationDegrees(dict["latitude"] as! NSNumber)
            point.coordinate.longitude = CLLocationDegrees(dict["longitude"]as! NSNumber)
            print(dict["latitude"])
      
            map.addAnnotation(point)
        }
    }
   
    @IBAction func searchBarButton(_ sender: Any) {
        let searchController = UISearchController(searchResultsController: nil)
        searchController.searchBar.delegate = self
        present(searchController, animated: true, completion: nil)
    }
    
    //@IBOutlet weak var map: MKMapView!
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar)
    {
        //Ignoring user
        UIApplication.shared.beginIgnoringInteractionEvents()
        
        //Activity Indicator
        let activityIndicator = UIActivityIndicatorView()
        activityIndicator.style = UIActivityIndicatorView.Style.gray
        activityIndicator.center = self.view.center
        activityIndicator.hidesWhenStopped = true
        activityIndicator.startAnimating()
        
        self.view.addSubview(activityIndicator)
        
        //Hide search bar
        searchBar.resignFirstResponder()
        dismiss(animated: true, completion: nil)
        
        //Create the search request
        let searchRequest = MKLocalSearch.Request()
        searchRequest.naturalLanguageQuery = searchBar.text
        
        let activeSearch = MKLocalSearch(request: searchRequest)
        
        activeSearch.start { (response, error) in
            
            activityIndicator.stopAnimating()
            UIApplication.shared.endIgnoringInteractionEvents()
            
            if response == nil
            {
                print("ERROR")
            }
            else
            {
                //Remove annotations
                let annotations = self.map.annotations
                self.map.removeAnnotations(annotations)
                
                //Getting data
                let latitude = response?.boundingRegion.center.latitude
                let longitude = response?.boundingRegion.center.longitude
                
                //Create annotation
                let annotation = MKPointAnnotation()
                annotation.title = searchBar.text
                annotation.coordinate = CLLocationCoordinate2DMake(latitude!, longitude!)
                self.map.addAnnotation(annotation)
                
                //Zooming in on annotation
                let coordinate:CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude!, longitude!)
                let span = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
                let region = MKCoordinateRegion(center: coordinate, span: span)
                self.map.setRegion(region, animated: true)
            }
            
        }
    }
 
    
 //Get Location
    
   
        
//    let object = NSEntityDescription.insertNewObject(forEntityName: "Location", into: context)as! Location
//
//        object.latitude = [18.5081, 18.5105, 18.5113, 18.5087, 18.5055, 18.5176, 18.5308]
////        object.longitude = 73.8313
////        object.placeName = "Nal Stop"
//
//        try! context.save()
//
//        let req = NSFetchRequest<Location>.init(entityName: "Location")
//        let result = try! context.fetch(req)
////        Array = result
//
// //print(result)
//
//       for item in result {
//        
//            print(item)
//
//        }

    
func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {

    let pin = MKPinAnnotationView(annotation: annotation, reuseIdentifier: nil)

    pin.pinTintColor = UIColor.brown


    pin.canShowCallout = true

    return pin
}

    
//    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation])
//    {
//        let location = locations[0]
//
//        let span:MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
//        let myLocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(location.coordinate.latitude, location.coordinate.longitude)
//        let region:MKCoordinateRegion = MKCoordinateRegion(center: myLocation, span: span)
//        map.setRegion(region, animated: true)
//
//        print(location.altitude)
//        print(location.speed)
//
//        self.map.showsUserLocation = true
//    }

}




 
