//
//  Listing.swift
//  AirbnbClone
//
//  Created by Ferenc Visztra on 03/03/2024.
//

import Foundation

struct Listing: Identifiable, Codable, Hashable {
    let id: String
    let ownerId: String
    let ownerName: String
    let ownerImageUrl: String
    let numberOfBedrooms: Int
    let numberOfBathrooms: Int
    let numberOfguests: Int
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
    var features: [ListingFeatures]
    var amenities: [ListingAmenities]
    let listingType: ListingType
}

enum ListingFeatures: Int, Codable, Identifiable, Hashable {
    
    var id: Int {
        return self.rawValue
    }
    
    case selfCheckin
    case superHost
    
    var imageName: String {
        switch self {
            
        case .selfCheckin:
            return "door.left.hand.open"
        case .superHost:
            return "medal"
        }
    }
    
    var title: String {
        switch self {
            
        case .selfCheckin:
            return "Self check-in"
        case .superHost:
            return "Superhost"
        }
    }
    
    var subtitle: String {
        switch self {
            
        case .selfCheckin:
            return "Check yourself in with the keypad."
        case .superHost:
            return "Superhosts are experience, highly rated who are commited to providing great stars for guests."
        }
    }
}

enum ListingAmenities: Int, Codable, Identifiable, Hashable {
    
    var id: Int {
        return self.rawValue
    }
    
    case pool = 0
    case kitchen
    case wifi
    case laundry
    case tv
    case alarmSystem
    case office
    case balcony
    
    var title: String {
        switch self {
            
        case .pool:
            return "Pool"
        case .kitchen:
            return "Kitchen"
        case .wifi:
            return "Wifi"
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
        }
    }
}

enum ListingType: Int, Codable, Identifiable, Hashable {
    
    var id: Int {
        return self.rawValue
    }
    
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
            return "Town house"
        case .villa:
            return "Villa"
        }
    }
}
