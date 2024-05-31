//
//  SearchAndFilterBar.swift
//  AirbnbClone
//
//  Created by Abi M on 5/26/24.
//

import SwiftUI

struct SearchAndFilterBar: View {
    @Binding var location: String

    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")

            VStack(alignment: .leading) {
                Text(location.isEmpty ? "Where to?" : location)
                    .font(.footnote)

                Text("\(location.isEmpty ? "Anywhere" : location) - Any Week - Add guests")
                    .foregroundStyle(.gray)
                    .font(.caption2)
            }

            Spacer()

            Button(action: {
                print("Button tapped")
            }, label: {
                Image(systemName: "line.3.horizontal.decrease.circle")
            })
            .foregroundStyle(.black)
        }
        .padding(.horizontal)
        .padding(.vertical, 10)
        .overlay {
            Capsule()
                .stroke(lineWidth: 0.5)
                .foregroundStyle(Color(.systemGray4))
                .shadow(color: .black.opacity(0.4), radius: 2)
        }
        .padding(.horizontal)
    }
}

#Preview {
    SearchAndFilterBar(location: .constant("Los Angeles"))
}
