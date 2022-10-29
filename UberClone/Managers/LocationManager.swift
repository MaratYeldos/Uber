//
//  LocationManager.swift
//  UberClone
//
//  Created by Yeldos Marat on 28.10.2022.
//

import CoreLocation

class LocationManager: NSObject, ObservableObject {
    private let clLocationManager = CLLocationManager()
    
    override init() {
        super.init()
        clLocationManager.delegate = self
        clLocationManager.desiredAccuracy = kCLLocationAccuracyBest
        clLocationManager.requestWhenInUseAuthorization()
        clLocationManager.startUpdatingLocation()
    }
}

extension LocationManager: CLLocationManagerDelegate {
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard !locations.isEmpty else { return }
        clLocationManager.stopUpdatingLocation()
    }
}
