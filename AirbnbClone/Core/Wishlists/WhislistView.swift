//
//  WhislistView.swift
//  AirbnbClone
//
//  Created by Ferenc Visztra on 01/03/2024.
//

import SwiftUI

struct WhislistView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 32) {
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Log in to view your wishlist")
                        .font(.headline)
                    
                    Text("you can create, view or edit your wishlists once you've logged in")
                        .font(.footnote)
                    
                }
                
                Button {
                    
                } label: {
                  Text("Log in")
                        .foregroundStyle(.white)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .frame(height: 48)
                        .background(.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("Wishlist")
        }
    }
}

#Preview {
    WhislistView()
}
