//
//  ListingButtonView.swift
//  ProfilePageWithSwiftUI
//
//  Created by Niraj on 09/08/22.
//

import SwiftUI

struct ListingAddToCartView: View {
    //MARK: - Property
    @EnvironmentObject var order: Order
    
    let item: MenuItem
    //MARK: - Body
    var body: some View {
        HStack(alignment: .center, spacing: 10) {
            
            Button {
                order.add(item: item)
            } label: {
                Text("Add to cart")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .padding(.all, 5)
                    .padding(.horizontal, 20)
                    .overlay(
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(lineWidth: 1.0)
                    )
                    .foregroundColor(.red)
                   
            }
            Button {} label: {
               Image(systemName: "heart.fill")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.purple.opacity(0.5))
                    .frame(width: 25, height: 25)
            }
        }// : HStack
    }
}

//MARK: - Preview
struct ListingButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ListingAddToCartView(item: MenuItem.example)
            .previewLayout(.fixed(width: 220, height: 60))
            .padding()
    }
}
