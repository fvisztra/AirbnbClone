//
//  ExploreViewModel.swift
//  AirbnbClone
//
//  Created by Ferenc Visztra on 03/03/2024.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var listings = [Listing]()
    @Published var searchLocation = ""
    private let service: ExploreService
    private var listingsAll = [Listing]()
    
    init(service: ExploreService) {
        self.service = service
        
        Task {
            await fetchListings()
        }
    }
    
    func fetchListings() async {
        do {
            self.listings = try await service.fetchListings()
            self.listingsAll = self.listings
        }
        catch {
            
        }
    }
    
    func updateListingForLocation() {
        let filteredListings = listingsAll.filter({
            $0.city.lowercased() == searchLocation.lowercased() ||
            $0.state.lowercased() == searchLocation.lowercased()
        })
        
        self.listings = filteredListings.isEmpty ? listingsAll : filteredListings
    }
}
