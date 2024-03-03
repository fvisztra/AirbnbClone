//
//  ExploreService.swift
//  AirbnbClone
//
//  Created by Ferenc Visztra on 03/03/2024.
//

import Foundation

class ExploreService {
    func fetchListings() async throws -> [Listing] {
        return DeveloperPreview().listing
    }
}
