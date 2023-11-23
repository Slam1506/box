//
//  ListingImageCouruselview.swift
//  Boxx
//
//  Created by Nikita Larin on 16.11.2023.
//

import SwiftUI

struct ListingImageCouruselview: View {
    var images = [
        "Listing1",
        "Listing",
    ]
    var body: some View {
        TabView{
            ForEach(images, id: \.self){
                image in Image(image)
            }
        }
            .tabViewStyle(.page)
    }
}

struct ListingImageCouruselview_Previews: PreviewProvider {
    static var previews: some View {
        ListingImageCouruselview()
    }
}
