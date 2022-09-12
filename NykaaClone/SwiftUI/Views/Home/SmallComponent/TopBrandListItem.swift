//
//  TopBrandListItem.swift
//  NykaaClone
//
//  Created by Purplle on 04/09/22.
//

import SwiftUI

struct TopBrandListItem: View {
    
    let topBanner: SecondTopBanner
    var body: some View {
        GIFView(gifName: topBanner.image)
    }
}

struct TopBrandListItem_Previews: PreviewProvider {
    static var previews: some View {
        TopBrandListItem(topBanner: topBanners[0])
            .previewLayout(.sizeThatFits)
    }
}
