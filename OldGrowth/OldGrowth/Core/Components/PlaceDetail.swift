//
//  PlaceDetail.swift
//  OldGrowth
//
//  Created by Tyson Lupul on 2023-02-14.
//

import SwiftUI

struct PlaceDetail: View {
    var place: Place
    @State var placeAuthor = "coolnaturalist"
    @State var placeAuthorPostedOn = "10d"
    
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top, spacing: 12) {
                VStack(alignment: .leading, spacing: 4) {
                    HStack {
                        Text(place.label).font(.system(.title))
                        
                        Spacer()
                        
                        Text("@\(placeAuthor)").font(.caption).foregroundColor(.gray)
                        
                        Text(placeAuthorPostedOn).font(.caption).foregroundColor(.gray)
                    }
                    
                    HStack {
                        Text(place.local).font(.subheadline)
                        Text("&bull;").font(.subheadline).bold().foregroundColor(.gray)
                        Text("\(place.regional), \(place.country)").font(.subheadline)
                        Spacer()

                    }
                }
            }.padding(.leading,20).padding(.trailing,20)
            
            HStack {
                Button {
                    // @todo action
                } label: {
                    Image(systemName: "bubble.left").font(.subheadline)
                }
                
                Spacer()
                
                Button {
                    // @todo action
                } label: {
                    Image(systemName: "arrow.2.squarepath").font(.subheadline)
                }
                
                Spacer()
        
                Button {
                    // @todo action
                } label: {
                    Image(systemName: "heart").font(.subheadline)
                }
                
                Spacer()
                
                Button {
                    // @todo action
                } label: {
                    Image(systemName: "bookmark").font(.subheadline)
                }
            }.padding().padding(.leading,20).padding(.trailing,20).foregroundColor(.gray)
            
            Divider()
            
            VStack(alignment: .leading, spacing:12) {
                Text("About \(place.label)").font(.title2)
                Text("\(place.description)").font(.body)

            }.padding()

        }
    }
    
}

struct ObserveDetail_Previews: PreviewProvider {
    static var previews: some View {
        PlaceDetail(place: ModelData().places[0])
    }
}
