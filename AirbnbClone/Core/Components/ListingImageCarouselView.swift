//
//  ListingImageCarouselView.swift
//  AirbnbClone
//
//  Created by Abi M on 5/26/24.
//

import SwiftUI

struct ListingImageCarouselView: View {

    let listing: Listing

    var body: some View {
        TabView {
            ForEach(listing.imageURLs, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarouselView(listing: DeveloperPreview.shared.listings[0])
}
