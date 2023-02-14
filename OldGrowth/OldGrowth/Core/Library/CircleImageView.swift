//
//  CircleImageView.swift
//  OldGrowth
//
//  Created by Tyson Lupul on 2023-02-12.
//

import SwiftUI

struct CircleImageView: View {
    var img: Image
    var body: some View {
        img.clipShape(Circle()).overlay(Circle().stroke(.white, lineWidth: 4)).shadow(radius: 7)
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView(img: Image("hot-springs-cove"))
    }
}
