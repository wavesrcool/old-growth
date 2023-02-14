//
//  PlaceDetailView.swift
//  OldGrowth
//
//  Created by Tyson Lupul on 2023-02-14.
//

import SwiftUI

struct PlaceDetailView: View {
    @EnvironmentObject var modelData: ModelData
    
    var place: Place
    
    var placeIndex: Int {
        modelData.places.firstIndex(where: {
            $0.id == place.id
        })!
    }
    
    var body: some View {
        ScrollView {
            MapBasisView(anchor: place.locationAnchor)
                .frame(height: 300)
            
            CircleImageView(img: place.img)
                .offset(y: -130).padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                HStack(alignment: .top, spacing: 12) {
                    VStack(alignment: .leading, spacing: 4) {
                        HStack {
                            Text(place.label).font(.system(.title))
                            
                            Spacer()
                            
                            Text("@\(place.author)").font(.caption).foregroundColor(.gray)
                            
                            Text(place.datePosted).font(.caption).foregroundColor(.gray)
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
}
    

struct PlaceDetailView_Previews: PreviewProvider {
    static let modelData = ModelData()
    
    static var previews: some View {
        PlaceDetailView(place: modelData.places[0]).environmentObject(modelData)
    }
}
