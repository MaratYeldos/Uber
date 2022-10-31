//
//  LocationManager.swift
//  UberClone
//
//  Created by Yeldos Marat on 28.10.2022.
//

import CoreLocation

class LocationManager: NSObject, ObservableObject {
    private let clLocationManager = CLLocationManager()
    static let shared = LocationManager()
    @Published var userLocation: CLLocationCoordinate2D?
    
    override init() {
        super.init()
        clLocationManager.delegate = self
        clLocationManager.desiredAccuracy = kCLLocationAccuracyBest
        clLocationManager.requestWhenInUseAuthorization()
        clLocationManager.startUpdatingLocation()
        clLocationManager.distanceFilter = 10.0
    }
}

extension LocationManager: CLLocationManagerDelegate {
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.first else { return }
        self.userLocation = location.coordinate
        clLocationManager.stopUpdatingLocation()
    }
}
