//
//  ContentView.swift
//  OldGrowth
//
//  Created by Tyson Lupul on 2023-02-12.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapOpenView().frame(height: 300)
            CircleImageView().offset(y: -130).padding(.bottom, -130)
            ObservePlaceRowView()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
