//
//  PlaceRowView.swift
//  OldGrowth
//
//  Created by Tyson Lupul on 2023-02-12.
//

import SwiftUI

struct PlaceRowView: View {
    var place: Place

    var body: some View {
        HStack {
            place.img.resizable().frame(width:50, height: 50)
            Text(place.label)
            
            Spacer()
            
            if place.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct PlaceRowView_Previews: PreviewProvider {
    static var places = ModelData().places
    
    static var previews: some View {
        Group {
            PlaceRowView(place: places[0])
            PlaceRowView(place: places[1])
        }.previewLayout(.fixed(width:300,height:70))
    }
}
