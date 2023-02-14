//
//  ObserveListView.swift
//  OldGrowth
//
//  Created by Tyson Lupul on 2023-02-14.
//

import SwiftUI

struct ObserveListView: View {
    var body: some View {
        NavigationView {
                List(places) { place in
                    NavigationLink {
                    ObserveDetailView(place: place)
                } label: {
                    PlaceRow(place:place)
                }
            }.navigationTitle("Places")
        }
    }
}

struct ObserveListView_Previews: PreviewProvider {
    static var previews: some View {
        ObserveListView()
    }
}
