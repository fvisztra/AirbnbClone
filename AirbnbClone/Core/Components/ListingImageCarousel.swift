//
//  ListingImageCarousel.swift
//  AirbnbClone
//
//  Created by Ferenc Visztra on 29/02/2024.
//

import SwiftUI

struct ListingImageCarousel: View {
    
    let listing: Listing
    
    var body: some View {
        TabView {
            ForEach(listing.imageURLs, id:\.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarousel(listing: DeveloperPreview().listing[0])
}
