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
            ScrollView {
                LazyVStack(spacing:32) {
                    ForEach(0 ... 10, id: \.self) { listing in
                        ListingView()
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    ExploreView()
}
