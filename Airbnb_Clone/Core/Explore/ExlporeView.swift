//
//  ExlporeView.swift
//  Airbnb_Clone
//
//  Created by Prajjwal on 29/04/26.
//

import SwiftUI

struct ExlporeView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 20)
                {
                    ForEach(0...10, id: \.self)
                    { listing in
                        ListingItemView()
                            .frame(height: 400)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    ExlporeView()
}
