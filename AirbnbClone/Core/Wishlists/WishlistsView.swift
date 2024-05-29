//
//  WishlistsView.swift
//  AirbnbClone
//
//  Created by Abi M on 5/29/24.
//

import SwiftUI

struct WishlistsView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 32) {
                VStack(alignment: .leading, spacing: 4) {
                    Text("Login to view your wishlists")
                        .font(.headline)
                    Text("You can create, view, or edit wishlists once you've logged in")
                        .font(.footnote)
                }

                Button(action: {
                    print("Login button tapped")
                }, label: {
                    Text("Log in")
                        .foregroundStyle(.white)
                        .fontWeight(.semibold)
                        .frame(width: 360, height: 48)
                        .background(.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                })

                Spacer()
            }
            .padding()
            .navigationTitle("Wishlists")
        }
    }
}

#Preview {
    WishlistsView()
}
