//
//  LocationModel.swift
//  Mapper
//
//  Created by Zoé Hartman on 26/09/2022.
//

import Foundation
import MapKit

struct Location : Identifiable, Decodable {
    var id: Int
    var name: String
    var lat: Double
    var lon: Double
    var address: String
    var type: String
    var url: String
    var wifi:Bool
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: lat, longitude: lon)
    }
}

var locations : [Location] = load("locations.json")
