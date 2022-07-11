//
//  ViewController.swift
//  LocationApp
//
//  Created by Kire  on 7/10/22.
//

import UIKit

// Provides scrollable map
import MapKit

// Provides location data
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {

    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var mapView: MKMapView!
    
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
        
        // Request device location once
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
        // MapKit delegete
        mapView.delegate = self
        
        // Show the devices's current location on the map view
        mapView.showsUserLocation = true
    
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let newLocation = locations.last{
            let latitude = "\(newLocation.coordinate.latitude)"
            let longitude = "\(newLocation.coordinate.longitude)"
            textView.text = "Latitude: \(latitude) \n Longitude \(longitude)"
        }
    }
    
    func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
        let zoomArea = MKCoordinateRegion(center: self.mapView.userLocation.coordinate, span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
        
        self.mapView.setRegion(zoomArea, animated: true)
    }
    
    


}

