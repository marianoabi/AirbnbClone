//
//  ExploreView.swift
//  AirbnbClone
//
//  Created by Abi M on 5/23/24.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                SearchAndFilterBar()
                LazyVStack(spacing: 32) {
                    ForEach(1 ... 10, id: \.self) { listing in
                        NavigationLink(value: listing) {
                            ListingItemView()
                                .frame(height: 400)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                        }
                    }
                }
                .padding()
            }
            .navigationDestination(for: Int.self) { listing in
//                Text("Listing detail view... \(listing)")
                ListingDetailView()
            }
        }
    }
}

#Preview {
    ExploreView()
}
