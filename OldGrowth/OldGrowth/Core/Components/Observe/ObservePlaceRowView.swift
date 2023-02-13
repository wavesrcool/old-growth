//
//  ObservePlaceRowView.swift
//  OldGrowth
//
//  Created by Tyson Lupul on 2023-02-12.
//

import SwiftUI

struct ObservePlaceRowView: View {
    @State var placeLabel = "Hot Springs Cove"
    @State var placeLocal = "Tofino"
    @State var placeRegional = "British Columbia"
    @State var placeCountry = "Canada"
    @State var placeAbout = "A truly transformational place to encounter. Hot Springs Cove is where the turbulence of the ocean and the tranquility of warm spring waters combine to create a unique environment of refuge amidst overpowering natural chaos."

    @State var placeAuthor = "coolnaturalist"
    @State var placeAuthorPostedOn = "10d"

    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top, spacing: 12) {
                VStack(alignment: .leading, spacing: 4) {
                    HStack {
                        Text(placeLabel).font(.system(.title))
                        
                        Spacer()
                        
                        Text("@\(placeAuthor)").font(.caption).foregroundColor(.gray)
                        
                        Text(placeAuthorPostedOn).font(.caption).foregroundColor(.gray)
                    }
                    
                    HStack {
                        Text(placeLocal).font(.subheadline)
                        Text("&bull;").font(.subheadline).bold().foregroundColor(.gray)
                        Text("\(placeRegional), \(placeCountry)").font(.subheadline)
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
                Text("About \(placeLabel)").font(.title2)
                Text("\(placeAbout)").font(.body)

            }.padding()

        }
    }
}

struct ObservePlaceRowView_Previews: PreviewProvider {
    static var previews: some View {
        ObservePlaceRowView()
    }
}
