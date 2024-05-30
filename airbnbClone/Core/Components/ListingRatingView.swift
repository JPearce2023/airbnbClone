//
//  ListingRatingView.swift
//  airbnbClone
//
//  Created by Jeff Pearce on 5/29/24.
//

import SwiftUI

struct ListingRatingView: View {
    var body: some View {
        HStack(spacing: 2) {
            Image(systemName: "star.fill")
            
            Text("4.86")
            
            Text(" - ")
            
            Text("28 reviews")
                .underline()
                .fontWeight(.semibold)
        }
    }
}

#Preview {
    ListingRatingView()
}
