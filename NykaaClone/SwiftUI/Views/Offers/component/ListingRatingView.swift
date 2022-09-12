//
//  RatingView.swift
//  ProfilePageWithSwiftUI
//
//  Created by Niraj on 09/08/22.
//

import SwiftUI

struct ListingRatingView: View {
        
    var body: some View {
        
        HStack(spacing: 5) {
            Text("5 ★")
                .font(.footnote)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .padding(.horizontal, 6)
                .frame(width: .infinity, height: 21, alignment: .center)
                .background(Color.green.cornerRadius(10))
                
        
            Text("300 Ratings")
                .font(.footnote)
                .fontWeight(.regular)
                .foregroundColor(.gray)
        }
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        ListingRatingView()
            .previewLayout(.sizeThatFits)
            
    }
}
