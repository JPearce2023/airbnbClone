//
//  ListingDetailView.swift
//  airbnbClone
//
//  Created by Jeff Pearce on 5/29/24.
//

import SwiftUI

struct ListingDetailView: View {
    
    var images = [
        "image-1",
        "image-2",
        "image-3",
        "image-4",
    ]  
    
    var body: some View {
        ScrollView {
            ListingImageCarouselView()
                .frame(height: 320)
            
            VStack(alignment: .leading, spacing: 8) {
                Text("Miami Villa")
                    .font(.title)
                    .fontWeight(.semibold)
                
                VStack(alignment: .leading) {
                    ListingRatingView()
                        .foregroundStyle(.black)
                    
                    Text("Miami, Florida")
                }
                .font(.caption)
            }
            .padding(.leading)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Divider()
            
            // Host info view
            HStack {
                VStack (alignment: .leading, spacing: 4) {
                    Text("Entire Villa hosted by Jon Smith")
                        .font(.headline)
                        .frame(width: 250, alignment: .leading)
                    
                    HStack (spacing: 2){
                        Text("4 guests -")
                        Text("4 bedrooms -")
                        Text("4 beds -")
                        Text("3 baths")
                        
                    }
                    .font(.caption)
                }
                .frame(width: 300, alignment: .leading)

                Spacer()
                
                Image("maleProfilePhoto")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 64, height: 64)
                    .clipShape(Circle())
            }
            .padding()
            
            Divider()
            
            //Listing features
            VStack (alignment: .leading, spacing: 16) {
                ForEach(0 ..< 2) { feature in
                    HStack(spacing: 12) {
                        Image(systemName: "medal")
                        
                        VStack(alignment: .leading) {
                            Text("Superhost")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            
                            Text("Superhosts are experinece, highly rated hosts who are commit to providing great stars for guests")
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                        Spacer()
                    }
                }
            }
            //.frame(maxWidth: .infinity, alignment: .leading)
            .padding()
            
            
        }
    }
}

#Preview {
    ListingDetailView()
}
