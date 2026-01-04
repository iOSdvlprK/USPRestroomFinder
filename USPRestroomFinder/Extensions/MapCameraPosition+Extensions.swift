//
//  MapCameraPosition+Extensions.swift
//  USPRestroomFinder
//
//  Created by joe on 1/4/26.
//

import SwiftUI
import MapKit

extension MapCameraPosition {
    static var apple: MapCameraPosition {
        .region(MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 37.3348826008422, longitude: -122.00899344992547), latitudinalMeters: 100, longitudinalMeters: 100))
    }
}
