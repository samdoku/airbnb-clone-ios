//
//  ExploreView.swift
//  airbnb
//
//  Created by Sam on 12/5/25.
//

import SwiftUI

struct ExploreView: View {
    
    var body: some View {
        NavigationStack {
            SearchAndFilterBar()
            
            ScrollView {
                LazyVStack(spacing:32) {
                    ForEach(0 ... 10, id: \.self) { listing in
                        NavigationLink(value:listing) {
                            ListingView()
                        }
                    }
                }
                .padding()
            }
            .navigationDestination(for: Int.self){ listing in
                ListingDetailView()
                    .navigationBarBackButtonHidden()
                    .navigationBarHidden(true)
            }
        }
    }
}

#Preview {
    ExploreView()
}
