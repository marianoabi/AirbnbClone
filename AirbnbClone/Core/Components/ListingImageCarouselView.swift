//
//  ListingImageCarouselView.swift
//  AirbnbClone
//
//  Created by Abi M on 5/26/24.
//

import SwiftUI

struct ListingImageCarouselView: View {

    let images = [
        "listing5-1",
        "listing5-2",
        "listing5-3",
        "listing5-4"
    ]

    var body: some View {
        TabView {
            ForEach(images, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarouselView()
}
