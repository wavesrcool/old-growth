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
            MapBasisView(anchor: place.locationAnchor)
                .frame(height: 300)
            
            CircleImageView(img: place.img).offset(y: -130).padding(.bottom, -130)
            
            PlaceDetail(place: place)
        }.navigationTitle(place.label).navigationBarTitleDisplayMode(.inline).ignoresSafeArea(edges: .top)
    }
}
    

struct ObserveDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ObserveDetailView(place: ModelData().places[0])
    }
}
