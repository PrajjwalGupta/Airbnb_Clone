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
                LazyVStack {
                    ForEach(0...10, id: \.self) { listing in
                        Rectangle()
                            .frame(height: 100)
                        
                    }
                }
            }
        }
    }
}

#Preview {
    ExlporeView()
}
