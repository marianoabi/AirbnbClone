//
//  ProfileView.swift
//  AirbnbClone
//
//  Created by Abi M on 5/29/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {

            // profile login view
            VStack(alignment: .leading, spacing: 32) {
                VStack(alignment: .leading, spacing: 8) {
                    Text("Profile")
                        .font(.largeTitle)
                    .fontWeight(.semibold)

                    Text("Login to start planning your next trip")

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

                HStack {
                    Text("Don't have an account yet?")

                    Text("Sign up")
                        .underline()
                        .fontWeight(.semibold)
                }
                .font(.caption)
            }

            // profile options
            VStack(spacing: 24) {
                ProfileActionRowView(imageName: "gear", title: "Settings")
                ProfileActionRowView(imageName: "gear", title: "Accesibility")
                ProfileActionRowView(imageName: "questionmark.circle", title: "Visit the help center")
            }
            .padding(.vertical)
        }
        .padding()
    }
}

#Preview {
    ProfileView()
}
