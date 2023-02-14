//
//  ObserveDetailView.swift
//  OldGrowth
//
//  Created by Tyson Lupul on 2023-02-14.
//

import SwiftUI

struct ObserveDetailView: View {
    var place: Place
    var body: some View {
        ScrollView {
            MapBasisView(anchor: place.locationAnchor).ignoresSafeArea(edges: .top).frame(height: 300)
            
            CircleImageView(img: place.img).offset(y: -130).padding(.bottom, -130)
            
            PlaceDetail(place: place)
        }.navigationTitle(place.label).navigationBarTitleDisplayMode(.inline)
    }
}
    

struct ObserveDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ObserveDetailView(place:places[0])
    }
}
