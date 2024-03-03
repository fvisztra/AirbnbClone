//
//  DeveloperPreview.swift
//  AirbnbClone
//
//  Created by Ferenc Visztra on 03/03/2024.
//

import Foundation

class DeveloperPreview {
    var listing: [Listing] = [
        .init(id: NSUUID().uuidString,
              ownerId: NSUUID().uuidString,
              ownerName: "Pete Owner",
              ownerImageUrl: "male-profile-photo",
              numberOfBedrooms: 4,
              numberOfBathrooms: 3,
              numberOfguests: 4,
              numberOfBeds: 4,
              pricePerNight: 567,
              latitude: 25.7850,
              longitude: -80.1936,
              imageURLs: ["listing-2", "listing-1", "listing-2", "listing-3"],
              address: "12 Main Str",
              city: "Miami",
              state: "Florida",
              title: "Miami Florida",
              rating: 4.86,
              features: [.selfCheckin, .superHost],
              amenities: [.wifi, .alarmSystem, .balcony],
              listingType: .villa)
    ]
}
