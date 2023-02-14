//
//  ObserveListView.swift
//  OldGrowth
//
//  Created by Tyson Lupul on 2023-02-14.
//

import SwiftUI

struct ObserveListView: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavorites = false
    
    var filteredPlaces: [Place]{
        modelData.places.filter { place in
            (!showFavorites || place.isFavorite)
        }
    }
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavorites) {
                    Text("Favorites only")
                }
                ForEach(filteredPlaces) { place in
                    NavigationLink {
                        ObserveDetailView(place: place)
                    } label: {
                        PlaceRow(place:place)
                    }
                }.navigationTitle("Places")
            }
        }
    }
}

struct ObserveListView_Previews: PreviewProvider {
    static var previews: some View {
        ObserveListView().environmentObject(ModelData())
    }
}
