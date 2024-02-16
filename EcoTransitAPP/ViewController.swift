//
//  ViewController.swift
//  EcoTransitAPP
//
//  Created by Vivienne Catarroja on 2/14/24.
//
import GoogleMaps
import GooglePlaces
import CoreLocation
import UIKit

class ViewController: UIViewController, CLLocationManagerDelegate {
    
    let manager = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        manager.delegate = self
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
        
        GMSServices.provideAPIKey("AIzaSyADfbzebwGYDUY8ADb8sRZRe8I14uIU4QY")
        GMSPlacesClient.provideAPIKey("AIzaSyADfbzebwGYDUY8ADb8sRZRe8I14uIU4QY")
        
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.first else {
            return
        }
        let coordinate = location.coordinate
        let options = GMSMapViewOptions()
        options.camera = GMSCameraPosition.camera(withLatitude: coordinate.latitude, longitude: coordinate.longitude, zoom: 6.0)
        options.frame = self.view.bounds
        
        let mapView = GMSMapView(options: options)
        self.view.addSubview(mapView)
        
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: coordinate.latitude, longitude: coordinate.longitude)
        //marker.title = "Sydney"
        //marker.snippet = "Australia"
        marker.map = mapView
    }
}
