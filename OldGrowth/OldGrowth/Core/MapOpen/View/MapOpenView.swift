//
//  MapOpenView.swift
//  OldGrowth
//
//  Created by Tyson Lupul on 2023-02-12.
//

import SwiftUI
import MapKit

struct MapOpenView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 49.369866, longitude: -126.272242), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    
    var body: some View {
        Map(coordinateRegion: $region)
    }
}

struct MapOpenView_Previews: PreviewProvider {
    static var previews: some View {
        MapOpenView()
    }
}

