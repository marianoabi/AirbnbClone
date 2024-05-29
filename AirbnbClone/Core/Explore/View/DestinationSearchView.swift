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
    @State private var selectedOption: DestinationSearchOptions = .guests {
        didSet {
            print(selectedOption)
        }
    }
    @State private var startDate = Date()
    @State private var endDate = Date()
    @State private var numGuests = 0

    var body: some View {
        VStack {

            HStack {
                Button(action: {
                    withAnimation(.snappy) {
                        show.toggle()
                    }
                }, label: {
                    Image(systemName: "xmark.circle")
                        .imageScale(.large)
                        .foregroundStyle(.black)
                })

                Spacer()

                if !destination.isEmpty {
                    withAnimation(.default) {
                        Button("Clear") {
                            destination = ""
                        }
                        .foregroundStyle(.black)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    }
                }
            }
            .padding()

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
            .modifier(CollapsibleDestinationViewModifier())
            .frame(height: selectedOption == .location ? 120 : 64)
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOption = .location
                }
            }

            // date selection view
            VStack(alignment: .leading) {
                if selectedOption == .dates {
                    Text("When's your trip?")
                        .font(.title2)
                        .fontWeight(.semibold)

                    VStack {
                        DatePicker("From", selection: $startDate, displayedComponents: .date)

                        Divider()

                        DatePicker("To", selection: $endDate, displayedComponents: .date)
                    }
                    .foregroundStyle(.gray)
                    .font(.subheadline)
                    .fontWeight(.semibold)

                } else {
                    CollapsedPickerView(title: "When", description: "Add dates")
                }
            }
            .modifier(CollapsibleDestinationViewModifier())
            .frame(height: selectedOption == .dates ? 180 : 64)
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOption = .dates
                }
            }

            // number of guests view
            VStack(alignment: .leading) {
                if selectedOption == .guests {
                    Text("Who's coming?")
                        .font(.title2)
                        .fontWeight(.semibold)

                    Stepper {
                        Text("\(numGuests) Adults")
                    } onIncrement: {
                        print("Add 1")
                        numGuests += 1
                    } onDecrement: {
                        guard numGuests > 0 else { return }
                        print("Subtract 1")
                        numGuests -= 1
                    }


                } else {
                    CollapsedPickerView(title: "Who", description: "Add guests")
                }
            }
            .modifier(CollapsibleDestinationViewModifier())
            .frame(height: selectedOption == .guests ? 120 : 64)
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOption = .guests
                }
            }
        }

        Spacer()
    }
}

#Preview {
    DestinationSearchView(show: .constant(false))
}

struct CollapsibleDestinationViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    }
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
