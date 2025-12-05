//
//  ListingView.swift
//  airbnb
//
//  Created by Sam on 12/5/25.
//

import SwiftUI

struct ListingView: View {
    var images = [
        "listing-1",
        "listing-2",
        "listing-3",
    ]
    
    var body: some View {
        VStack(spacing:8){
            // images
            TabView {
                ForEach(images, id: \.self) { image in
                    Image(image)
                }
            }
            .frame(maxWidth:.infinity)
            .aspectRatio(1, contentMode: .fit)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .tabViewStyle(.page)
            
            // listing details
            HStack(alignment:.top){
                // details
                VStack(alignment:.leading){
                    Text("Maimi, Florida").fontWeight(.semibold)
                    Text("12 miles away").foregroundStyle(.gray)
                    Text("Nov 3 - 10").foregroundStyle(.gray)
                    HStack(spacing:4) {
                        Text("$567").fontWeight(.semibold)
                        Text("night")
                    }
                }
                
                Spacer()
                
                // rating
                
                HStack(spacing:2) {
                    Image(systemName: "star.fill")
                    Text("4.86")
                }
                 
                
            }
            .font(.footnote)
        }
    }
}

#Preview {
    ListingView()
}
