//
//  ExploreService.swift
//  AirbnbClone
//
//  Created by Abi M on 5/29/24.
//

import Foundation

class ExploreService {
    func fetchListings() async throws -> [Listing] {
        return DeveloperPreview.shared.listings
    }
}
