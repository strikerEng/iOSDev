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
    var locationPins = [CLLocation]()
    
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
        
        // To drop a pin we need to detect the long press gesture
        let longPressGesture = UILongPressGestureRecognizer(target: self, action: #selector(addPin(longGesture:)))
        mapView.addGestureRecognizer(longPressGesture)
    
    }
    
    // Respond to a long press in the map view by adding a pin to the location of the long press
    @objc func addPin(longGesture: UIGestureRecognizer){
        let touchPoint = longGesture.location(in: mapView)
        let touchLocation = mapView.convert(touchPoint, toCoordinateFrom: mapView)
        
        let location = CLLocation(latitude: touchLocation.latitude, longitude: touchLocation.longitude)
        
        let pinToAdd = MKPointAnnotation()
        pinToAdd.coordinate = touchLocation
        pinToAdd.title = "\(touchLocation.latitude) \(touchLocation.longitude)"
        
        locationPins.append(location)
        self.mapView.addAnnotation(pinToAdd)
        
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        // When the device's location is updated show that in the text view
        if let newLocation = locations.last{
            let latitude = "\(newLocation.coordinate.latitude)"
            let longitude = "\(newLocation.coordinate.longitude)"
            textView.text = "Latitude: \(latitude) \n Longitude \(longitude)"
        }
    }
    
    func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
        // Define the zoom area based on the device's location
        let zoomArea = MKCoordinateRegion(center: self.mapView.userLocation.coordinate, span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
        
        self.mapView.setRegion(zoomArea, animated: true)
    }
    
    // Remove all pins when the Clear Pins button is pushed
    @IBAction func clearPins(_ sender: UIButton) {
        mapView.removeAnnotations(mapView.annotations)
        locationPins.removeAll()
    }
    


}

