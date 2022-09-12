//
//  PriceAndDiscountView.swift
//  ProfilePageWithSwiftUI
//
//  Created by Niraj on 09/08/22.
//

import SwiftUI

struct PriceAndDiscountView: View {
    //MARK: - Property
        
    //MARK: - Body
    var body: some View {
        
        HStack(spacing: 5) {
            Text("₹ 600")
                .font(.caption2)
                .fontWeight(.semibold)
                .foregroundColor(.black)
            
            ZStack {
                Text("₹ 500")
                    .font(.caption2)
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
                
                Color.gray
                    .frame(width: 35, height: 1)
            }
            
            Text("20 %")
                .font(.caption2)
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.pink)
        } //: HSTACK
        
    }
}

//MARK: - Preview
struct PriceAndDiscountView_Previews: PreviewProvider {
    static var previews: some View {
        PriceAndDiscountView()
            .previewLayout(.sizeThatFits)
            
    }
}
