//
//  ResultsViewController.swift
//  EcoTransitAPP
//
//  Created by Vivienne Catarroja on 2/15/24.
//

import Foundation
import GooglePlaces

final class GooglePlacesManager {
    static let shared = GooglePlacesManager()
    
    private let client = GMSPlacesClient.shared()
    
    private init () {}
    
    public func setUp() {
        GMSPlacesClient.provideAPIKey("AIzaSyADfbzebwGYDUY8ADb8sRZRe8I14uIU4QY")
    }
}
