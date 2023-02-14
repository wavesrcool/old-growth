//
//  Place.swift
//  OldGrowth
//
//  Created by Tyson Lupul on 2023-02-13.
//

import Foundation
import SwiftUI
import CoreLocation

struct Place: Hashable, Codable, Identifiable {
    var id: Int
    var author: String
    var datePosted: String
    var label: String
    var local: String
    var regional: String
    var country: String
    var description: String
    var isFavorite: Bool
    
    private var imgName: String
    var img: Image {
        Image(imgName)
    }
    
    private var anchor: Anchors
    var locationAnchor: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: anchor.lat, longitude: anchor.lng)
    }
    
    struct Anchors: Hashable, Codable {
        var lat: Double
        var lng: Double
    }
    
}
