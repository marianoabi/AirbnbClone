//
//  ProfileActionRowView.swift
//  AirbnbClone
//
//  Created by Abi M on 5/29/24.
//

import SwiftUI

struct ProfileActionRowView: View {
    let imageName: String
    let title: String

    var body: some View {
        VStack {
            HStack {
                Image(systemName: imageName)

                Text(title)
                    .font(.subheadline)

                Spacer()

                Image(systemName: "chevron.right")
            }

            Divider()
        }
    }
}

#Preview {
    ProfileActionRowView(imageName: "gear", title: "Settings")
}
