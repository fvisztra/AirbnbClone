//
//  ExploreView.swift
//  AirbnbClone
//
//  Created by Ferenc Visztra on 29/02/2024.
//

import SwiftUI

struct ExploreView: View {
    
    @State private var showDestiantionSearchView = false
    @StateObject var viewModel = ExploreViewModel(service: ExploreService())
    
    var body: some View {
        NavigationStack {
            
            if showDestiantionSearchView {
                DestinationSearchView(show: $showDestiantionSearchView,viewModel: viewModel)
            }
            else {
                ScrollView {
                    SearchAndFilterBar(location: $viewModel.searchLocation)
                        .onTapGesture {
                            withAnimation(.snappy) {
                                showDestiantionSearchView.toggle()
                            }
                        }
                    
                    LazyVStack(spacing: 32) {
                        ForEach(viewModel.listings) { listing in
                            NavigationLink(value: listing) {
                                ListingItemView(listing: listing)
                                    .frame(height: 400)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                            }
                        }
                    }
                    .padding()
                }
                .navigationDestination(for: Listing.self) { listing in
                    ListingDetailView(listing: listing)
                        .withCustomBackButton()
                }
            }
        }
        .toolbarBackground(
                        Color.clear,
                        for: .navigationBar)
        .toolbarBackground(.visible, for: .navigationBar)
    }
}

#Preview {
    ExploreView()
}
