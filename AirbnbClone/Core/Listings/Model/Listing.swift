//
//  Listing.swift
//  AirbnbClone
//
//  Created by Abi M on 5/29/24.
//

import Foundation

struct Listing: Identifiable, Codable, Hashable {
    let id: String
    let ownderId: String
    let ownerName: String
    let ownerImageUrl: String
    let numberOfBedrooms: Int
    let numberOfBathrooms: Int
    let numberOfGuests: Int
    let numberOfBeds: Int
    var pricePerNight: Int
    let latitude: Double
    let longitude: Double
    var imageURLs: [String]
    let address: String
    let city: String
    let state: String
    let title: String
    var rating: Double
    var features: [ListingFeature]
    var amenities: [ListingAmenities]
    var type: ListingType
}

enum ListingFeature: Int, Codable, Identifiable, Hashable {
    case selfCheckin
    case superHost

    var title: String {
        switch self {
        case .selfCheckin:
            return "Self check-in"
        case .superHost:
            return "Superhost"
        }
    }

    var imageName: String {
        switch self {
        case .selfCheckin:
            return "door.left.hand.open"
        case .superHost:
            return "medal"
        }
    }

    var subTitle: String {
        switch self {
        case .selfCheckin:
            return "Check yourself in with the keypad."
        case .superHost:
            return "Superhosts are experienced, highly rated hosts who are commited to providing greate stars for guests."
        }
    }

    var id: Int { return self.rawValue }
}

enum ListingAmenities: Int, Codable, Identifiable, Hashable {
    case pool
    case kitchen
    case wifi
    case laundry
    case tv
    case alarmSystem
    case office
    case balcony
    case parking

    var title: String {
        switch self {
        case .pool:
            return "Pool"
        case .kitchen:
            return "Kitchen"
        case .wifi:
            return "WiFi"
        case .laundry:
            return "Laundry"
        case .tv:
            return "TV"
        case .alarmSystem:
            return "Alarm System"
        case .office:
            return "Office"
        case .balcony:
            return "Balcony"
        case .parking:
            return "Parking"
        }
    }

    var imageName: String {
        switch self {
        case .pool:
            return "figure.pool.swim"
        case .kitchen:
            return "fork.knife"
        case .wifi:
            return "wifi"
        case .laundry:
            return "washer"
        case .tv:
            return "tv"
        case .alarmSystem:
            return "checkerboard.shield"
        case .office:
            return "pencil.and.ruler.fill"
        case .balcony:
            return "building"
        case .parking:
            return "car"
        }
    }

    var id: Int { return self.rawValue }
}

enum ListingType: Int, Identifiable, Codable, Hashable {
    case apartment
    case house
    case townHouse
    case villa

    var description: String {
        switch self {
        case .apartment:
            return "Apartment"
        case .house:
            return "House"
        case .townHouse:
            return "Town House"
        case .villa:
            return "Villa"
        }
    }

    var id: Int { return self.rawValue }
}
