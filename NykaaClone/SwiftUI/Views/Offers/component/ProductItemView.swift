//
//  ProductItemView.swift
//  NykaaClone
//
//  Created by Purplle on 02/09/22.
//

import SwiftUI

struct ProductItemView: View {
    //MARK: - Property
   // let product: Product
    
    let item: MenuItem
    //MARK: - Body
    var body: some View {
        
        VStack(alignment: .center) {
            VStack(alignment: .leading, spacing: 10) {
                //Photo
                ZStack {
                BannerImageView(item: item)
                
                AdAndLogoDetailView()
                        .offset(y: -80)
                        .frame(height: 25, alignment: .center)

                    ListingOfferView()
                        .offset(x: -60, y: 87)
                } //: ZStack

                //Name
                Text(item.name)
                    .font(.callout)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.top, 8)
                
                //price and discound view
                PriceAndDiscountView()
                
                // Ratings view
                ListingRatingView()
                
                Spacer()
                
                // Add to cart Button
                ListingAddToCartView(item: item)
                    .padding(.bottom, 20)
                
            } // : VStack
            .padding(.horizontal, 10)
            .padding(.top, 10)
            
        }// : VStack
        
    }
}

//MARK: - Preview
struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(item: MenuItem.example)
            .previewLayout(.fixed(width: 200, height: 380))
            .background(Color.white)
        
    }
}
