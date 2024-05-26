//
//  ListingItemView.swift
//  AirbnbClone
//
//  Created by Abi M on 5/23/24.
//

import SwiftUI

let properties = [
    "listing5-1",
    "listing5-2",
    "listing5-3",
    "listing5-4"
]

struct ListingItemView: View {
    var body: some View {
        VStack(spacing: 8) {
            //images
            TabView {
                ForEach(properties, id: \.self) { property in
                    Image(property)
                        .resizable()
                        .scaledToFill()
                }
            }
            .frame(height: 320)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .tabViewStyle(.page)

            //listing details
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Text("Miami, Florida")
                        .fontWeight(.semibold)

                    Text("12 mi away")
                        .foregroundStyle(.gray)

                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)

                    HStack(spacing: 4) {
                        Text("$567")
                            .fontWeight(.semibold)
                        Text("night")
                    }
                }

                Spacer()

                HStack(spacing: 2) {
                    Image(systemName: "star.fill")

                    Text("4.86")
                }
            }
            .font(.footnote)
        }
    }
}

#Preview {
    ListingItemView()
}
