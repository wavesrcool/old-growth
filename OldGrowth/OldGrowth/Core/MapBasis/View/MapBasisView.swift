//
//  MapBasisView.swift
//  OldGrowth
//
//  Created by Tyson Lupul on 2023-02-12.
//

import SwiftUI
import MapKit

struct MapBasisView: View {
    var anchor: CLLocationCoordinate2D

    @State private var region = MKCoordinateRegion()
    
    var body: some View {
        Map(coordinateRegion: $region).onAppear {
            setRegion(anchor)
        }
    }
    
    private func setRegion(_ anchor: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(center: anchor, span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    }
}

struct MapOpenView_Previews: PreviewProvider {
    static var previews: some View {
        MapBasisView(anchor: CLLocationCoordinate2D(
            latitude: 49.369866, longitude: -126.272242))
    }
}

