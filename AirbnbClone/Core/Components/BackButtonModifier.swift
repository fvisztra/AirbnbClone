//
//  BackButtonModifier.swift
//  AirbnbClone
//
//  Created by Ferenc Visztra on 03/03/2024.
//

import SwiftUI

struct BackButtonModifier: ViewModifier {
//    @EnvironmentObject private var navigationState: NavigationState
    
    @Environment(\.dismiss) var dismiss
    
    func body(content: Content) -> some View {
        content
            .navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        dismiss()
                    }, label: {
                       Image(systemName: "chevron.left")
                            .foregroundStyle(.black)
                            .background{
                                Circle()
                                    .fill(.white)
                                    .frame(width: 32, height: 32)
                            }
//                            .padding(32)
                    })
                }
            }
    }
}

extension View {
    func withCustomBackButton() -> some View {
        modifier(BackButtonModifier())
    }
}
