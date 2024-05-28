//
//  DestinationSearchView.swift
//  AirbnbClone
//
//  Created by Abi M on 5/28/24.
//

import SwiftUI

enum DestinationSearchOptions {
    case location
    case dates
    case guests
}

struct DestinationSearchView: View {

    @Binding var show: Bool
    @State private var destination = ""
    @State private var selectedOption: DestinationSearchOptions = .location {
        didSet {
            print(selectedOption)
        }
    }

    var body: some View {
        VStack {

            Button(action: {
                withAnimation(.snappy) {
                    show.toggle()
                }
            }, label: {
                Image(systemName: "xmark.circle")
                    .imageScale(.large)
                    .foregroundStyle(.black)
            })

            VStack(alignment: .leading) {
                if selectedOption == .location {
                    Text("Where to?")
                        .font(.title)
                        .fontWeight(.semibold)

                    HStack {
                        Image(systemName: "magnifyingglass")
                            .imageScale(.small)

                        TextField("Search destination", text: $destination)
                            .font(.subheadline)
                    }
                    .frame(height: 44)
                    .padding(.horizontal)
                    .overlay {
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(lineWidth: 1.0)
                            .foregroundStyle(Color(.systemGray4))
                    }
                } else {
                    CollapsedPickerView(title: "Where", description: "Add destination")
                }
            }
            .padding()
            .frame(height: selectedOption == .location ? 120 : 64)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOption = .location
                }
            }
        }

        // date selection view
        VStack {
            if selectedOption == .dates {
                HStack {
                    Text("Show expanded view")
                    Spacer()
                }
            } else {
                CollapsedPickerView(title: "When", description: "Add dates")
                    .onTapGesture {
                        withAnimation(.snappy) {
                            selectedOption = .dates
                        }
                    }
            }
        }
        .padding()
        .frame(height: selectedOption == .dates ? 120 : 64)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .padding()
        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)

        // number of guests view
        VStack {
            if selectedOption == .guests {
                HStack {
                    Text("Show expanded view")
                    Spacer()
                }
            } else {
                CollapsedPickerView(title: "Who", description: "Add guests")
                    .onTapGesture {
                        withAnimation(.snappy) {
                            selectedOption = .guests
                        }
                    }
            }
        }
        .padding()
        .frame(height: selectedOption == .guests ? 120 : 64)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .padding()
        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    DestinationSearchView(show: .constant(false))
}

struct CollapsedPickerView: View {

    let title: String
    let description: String

    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .foregroundStyle(.gray)

                Spacer()

                Text(description)
            }
            .font(.subheadline)
            .fontWeight(.semibold)
        }
    }
}
