//
//  FeaturedItemView.swift
//  NykaaClone
//
//  Created by Purplle on 03/09/22.
//

import SwiftUI

struct FeaturedItemView: View {
    //MARK: - property
    
    let topBanner: SecondTopBanner
    
    //MARK: - Body
    var body: some View {

        GIFView(gifName: topBanner.image)

    }
}


//MARK: - Preview
struct FeaturedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemView(topBanner: topBanners[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
