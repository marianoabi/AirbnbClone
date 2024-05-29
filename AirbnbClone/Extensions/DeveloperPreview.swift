//
//  DeveloperPreview.swift
//  AirbnbClone
//
//  Created by Abi M on 5/29/24.
//

import Foundation

class DeveloperPreview {

    static let shared = DeveloperPreview()

    var listings: [Listing] = [
        .init(id: NSUUID().uuidString,
              ownderId: NSUUID().uuidString,
              ownerName: "Steve Jobs",
              ownerImageUrl: "SteveJobs",
              numberOfBedrooms: 4,
              numberOfBathrooms: 3,
              numberOfGuests: 8,
              numberOfBeds: 6,
              pricePerNight: 567,
              latitude: 25.7850,
              longitude: -80.1936, 
              imageURLs: ["listing1-1", "listing1-2","listing1-3", "listing1-4", "listing1-5"],
              address: "124 Main St",
              city: "Miami",
              state: "Florida",
              title: "Miami Villa",
              rating: 4.86,
              features: [.selfCheckin, .superHost],
              amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv],
              type: .villa)
        ,
        .init(id: NSUUID().uuidString,
              ownderId: NSUUID().uuidString,
              ownerName: "Abigail Mariano",
              ownerImageUrl: "SteveJobs",
              numberOfBedrooms: 2,
              numberOfBathrooms: 1,
              numberOfGuests: 4,
              numberOfBeds: 4,
              pricePerNight: 261,
              latitude: 25.7850,
              longitude: -80.1936,
              imageURLs: ["listing2-1", "listing2-2","listing2-3", "listing2-4"],
              address: "Purok 5",
              city: "Lupao",
              state: "Nueva Ecija",
              title: "Lupao Staycation",
              rating: 4.2,
              features: [.selfCheckin, .superHost],
              amenities: [.wifi, .laundry, .tv, .parking, .kitchen],
              type: .apartment)
        ,
        .init(id: NSUUID().uuidString,
              ownderId: NSUUID().uuidString,
              ownerName: "Taylor Swift",
              ownerImageUrl: "SteveJobs",
              numberOfBedrooms: 5,
              numberOfBathrooms: 6,
              numberOfGuests: 10,
              numberOfBeds: 5,
              pricePerNight: 875,
              latitude: 25.7850,
              longitude: -80.1936,
              imageURLs: ["listing3-1", "listing3-2","listing3-3", "listing3-4", "listing3-5"],
              address: "78 Blk 32",
              city: "Los Angeles",
              state: "California",
              title: "Beautiful Malibu home in Los Angeles",
              rating: 4.97,
              features: [.selfCheckin, .superHost],
              amenities: [.wifi, .pool, .alarmSystem, .kitchen],
              type: .villa)
        ,
        .init(id: NSUUID().uuidString,
              ownderId: NSUUID().uuidString,
              ownerName: "Steve Jobs",
              ownerImageUrl: "SteveJobs",
              numberOfBedrooms: 4,
              numberOfBathrooms: 3,
              numberOfGuests: 8,
              numberOfBeds: 6,
              pricePerNight: 567,
              latitude: 25.7850,
              longitude: -80.1936,
              imageURLs: ["listing4-1", "listing4-2","listing4-3", "listing4-4", "listing4-5", "listing4-6"],
              address: "124 Main St",
              city: "Miami",
              state: "Florida",
              title: "Miami Villa",
              rating: 4.86,
              features: [.selfCheckin, .superHost],
              amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv],
              type: .villa)
        ,
        .init(id: NSUUID().uuidString,
              ownderId: NSUUID().uuidString,
              ownerName: "Abigail Mariano",
              ownerImageUrl: "SteveJobs",
              numberOfBedrooms: 2,
              numberOfBathrooms: 1,
              numberOfGuests: 4,
              numberOfBeds: 4,
              pricePerNight: 261,
              latitude: 25.7850,
              longitude: -80.1936,
              imageURLs: ["listing5-1", "listing5-2","listing5-3", "listing5-4"],
              address: "Purok 5",
              city: "Lupao",
              state: "Nueva Ecija",
              title: "Lupao Staycation",
              rating: 4.2,
              features: [.selfCheckin, .superHost],
              amenities: [.wifi, .laundry, .tv, .parking, .kitchen],
              type: .apartment)
        ,
        .init(id: NSUUID().uuidString,
              ownderId: NSUUID().uuidString,
              ownerName: "Taylor Swift",
              ownerImageUrl: "SteveJobs",
              numberOfBedrooms: 5,
              numberOfBathrooms: 6,
              numberOfGuests: 10,
              numberOfBeds: 5,
              pricePerNight: 875,
              latitude: 25.7850,
              longitude: -80.1936,
              imageURLs: ["listing6-1", "listing6-2","listing6-3", "listing6-4"],
              address: "78 Blk 32",
              city: "Los Angeles",
              state: "California",
              title: "Beautiful Malibu home in Los Angeles",
              rating: 4.97,
              features: [.selfCheckin, .superHost],
              amenities: [.wifi, .pool, .alarmSystem, .kitchen],
              type: .villa)
    ]
}
