//
//  ListingDetailView.swift
//  AirbnbClone
//
//  Created by Abi M on 5/26/24.
//

import SwiftUI
import MapKit

struct ListingDetailView: View {

    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ScrollView {
            ZStack(alignment: .topLeading) {
                ListingImageCarouselView()
                    .frame(height: 320)

                Button(action: {
                    print("Back button tapped")
                    dismiss()
                }, label: {
                    Image(systemName: "chevron.left")
                        .foregroundStyle(.black)
                        .background {
                            Circle()
                                .fill(.white)
                                .frame(width: 32, height: 32)
                        }
                        .padding(32)
                })
            }

            VStack(alignment: .leading, spacing: 8) {
                Text("Miami Villa")
                    .font(.title)
                    .fontWeight(.semibold)

                VStack(alignment: .leading) {
                    HStack(spacing: 2) {
                        HStack {
                            Image(systemName: "star.fill")
                            Text("4.38")
                        }

                        Text(" - ")

                        Text("28 reviews")
                            .underline()
                            .fontWeight(.semibold)
                    }
                    .foregroundStyle(.black)

                    Text("Miami, Florida")
                }
                .font(.caption)
            }
            .padding(.leading)
            .frame(maxWidth: .infinity, alignment: .leading)

            Divider()

            // Host info view
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    Text("Entire villa hosted by Steve Jobs")
                        .font(.headline)
                        .frame(width: 250, alignment: .leading)

                    HStack(spacing: 2) {
                        Text("4 guests -")
                        Text("4 bedrooms -")
                        Text("4 beds -")
                        Text("3 baths")
                    }
                    .font(.caption)
                }
                .frame(width: 300, alignment: .leading)

                Spacer()

                Image("SteveJobs")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 65, height: 65)
                    .clipShape(Circle())
            }
            .padding()

            Divider()

            // listing features
            VStack(alignment: .leading, spacing: 16) {
                ForEach(0 ..< 2) { feature in
                    HStack(spacing: 12) {
                        Image(systemName: "medal")

                        VStack(alignment: .leading) {
                            Text("Superhost")
                                .font(.footnote)
                                .fontWeight(.semibold)

                            Text("Superhosts are experienced, highly rated hots wo are commited to providing great stars for guests")
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                        Spacer()
                    }
                }
            }
            .padding()

            Divider()

            // bedroom view
            VStack(alignment: .leading, spacing: 16) {
                Text("Where you'll sleep")
                    .font(.headline)

                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 16) {
                        ForEach(1 ..< 5) { bedroom in
                            VStack(alignment: .leading) {
                                Image(systemName: "bed.double")
                                Text("Bedroom \(bedroom)")
                            }
                            .frame(width: 132, height: 100)
                            .overlay {
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(lineWidth: 1)
                                    .foregroundStyle(.gray)
                            }
                        }
                    }
                }
                .scrollTargetBehavior(.paging)
            }
            .padding()

            Divider()

            // listing amenities
            VStack(alignment: .leading, spacing: 16) {
                Text("What this place offers")
                    .font(.headline)

                ForEach( 1 ... 5, id: \.self) { feature in
                    HStack() {
                        Image(systemName: "wifi")
                            .frame(width: 32)
                        Text("Wifi")
                            .font(.footnote)

                        Spacer()
                    }
                }
            }
            .padding()

            Divider()

            VStack(alignment: .leading, spacing: 16) {
                Text("Where you'll be")
                    .font(.headline)

                Map()
                    .frame(height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
            }
            .padding()
        }
        .ignoresSafeArea()
        .padding(.bottom, 64)
        .overlay(alignment: .bottom) {
            VStack(alignment: .leading) {
                Divider()
                    .padding(.bottom)

                HStack {
                    VStack(alignment: .leading) {
                        Text("$500")
                            .font(.headline)
                            .fontWeight(.semibold)

                        Text("Total before taxes")
                            .font(.footnote)

                        Text("Oct 15 - 20")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .underline()
                    }

                    Spacer()

                    Button(action: {
                        print("Reserve button tapped")
                    }, label: {
                        Text("Reserve")
                            .foregroundStyle(.white)
                            .font(.headline)
                            .fontWeight(.semibold)
                            .frame(width: 140, height: 40)
                            .background(.pink)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    })
                }
                .padding(.horizontal, 32)
            }
            .background(.white)
        }
    }
}

#Preview {
    ListingDetailView()
}
