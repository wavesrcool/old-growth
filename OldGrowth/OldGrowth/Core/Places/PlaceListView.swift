//
//  PlaceListView.swift
//  OldGrowth
//
//  Created by Tyson Lupul on 2023-02-14.
//

import SwiftUI

struct PlaceListView: View {
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
                        PlaceDetailView(place: place)
                    } label: {
                        PlaceRowView(place:place)
                    }
                }.navigationTitle("Places")
            }
        }
    }
}

struct PlaceListView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceListView().environmentObject(ModelData())
    }
}
