//
//  ListingItemView.swift
//  Airbnb_Clone
//
//  Created by Prajjwal on 01/05/26.
//

import SwiftUI

struct ListingItemView: View {
    var images = ["Listing-10","Listing-11","Listing-12","Listing-13"]
    var body: some View {
        VStack(spacing: 8) {
            //images
            TabView {
                ForEach(images, id: \.self) { image in
                   Image(image)
                        .resizable()
                        .scaledToFill()
                }
            }
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .tabViewStyle(.page)
            //listingView
            HStack(alignment: .top) {
                VStack (alignment: .leading){
                    Text("Miami, Florida")
                        .fontWeight(.semibold)
                    Text("12 Miles away")
                        .foregroundStyle(.gray)
                    Text("Nov 3 - 12")
                        .foregroundStyle(.gray)
                    HStack (spacing: 4) {
                        Text("$435")
                            .fontWeight(.semibold)
                        Text("per night")
                    }
                }.font(.footnote)
                Spacer()
                HStack(spacing: 2) {
                    Image(systemName: "star.fill")
                    Text("4.86")
                }.font(.footnote)
            }
        }.padding()
    }
}

#Preview {
    ListingItemView()
}
