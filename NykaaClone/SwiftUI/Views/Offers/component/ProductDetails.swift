//
//  ProductDetails.swift
//  NykaaClone
//
//  Created by Purplle on 02/09/22.
//

import SwiftUI

struct ProductDetails: View {
    let item: MenuItem
    @EnvironmentObject var order: Order

    var body: some View {
        VStack {
            Image(item.image)
                .resizable()
                .scaledToFit()
            
            Text("Price: \(item.price)")
                .font(.title)
                .fontWeight(.bold)
            
            Text(item.description)
                .padding()
            
            // Add to cart Button
            ListingAddToCartView(item: item)
                .padding(.bottom, 20)
            
            .font(.headline)
            Spacer()
               
        }
    }
}

struct ProductDetails_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetails(item: MenuItem.example)
    }
}
