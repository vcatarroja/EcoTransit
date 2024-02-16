//
//  ViewController.swift
//  EcoTransitAPP
//
//  Created by Vivienne Catarroja on 2/11/24.
//
import GoogleMaps
import GooglePlaces
import CoreLocation
import UIKit
import MapKit

class ViewController: UIViewController, UISearchResultsUpdating {
 
    let mapView = MKMapView()
    
    let searchVC = UISearchController(searchResultsController: ResultsViewController())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Maps"
        view.addSubview(mapView)
        searchVC.searchBar.backgroundColor = .secondarySystemBackground
        searchVC.searchResultsUpdater = self
        navigationItem.searchController = searchVC
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        mapView.frame = CGRect(x:0, y: view.safeAreaInsets.top, width: view.frame.size.width, height: view.frame.size.height - view.safeAreaInsets.top)
        
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        
    }
}

//class ViewController: UIViewController, CLLocationManagerDelegate {
    //let manager = CLLocationManager()

    //override func viewDidLoad() {
        //super.viewDidLoad()
        //manager.delegate = self
        //manager.requestWhenInUseAuthorization()
        //manager.startUpdatingLocation()
        
        //GMSServices.provideAPIKey("AIzaSyADfbzebwGYDUY8ADb8sRZRe8I14uIU4QY")
        //GMSPlacesClient.provideAPIKey("AIzaSyADfbzebwGYDUY8ADb8sRZRe8I14uIU4QY")
        
    //}
    
    //func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        //guard let location = locations.first else {
            //return
        //}
        //let coordinate = location.coordinate
        //let options = GMSMapViewOptions()
        //options.camera = GMSCameraPosition.camera(withLatitude: coordinate.latitude, longitude: coordinate.longitude, zoom: 6.0)
        //options.frame = self.view.bounds
        
        //let mapView = GMSMapView(options: options)
        //self.view.addSubview(mapView)
        
        //let marker = GMSMarker()
        //marker.position = CLLocationCoordinate2D(latitude: coordinate.latitude, longitude: coordinate.longitude)
        //marker.title = "Sydney"
        //marker.snippet = "Australia"
        //marker.map = mapView
    //}
//}
