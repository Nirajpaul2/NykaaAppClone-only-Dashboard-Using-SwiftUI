//
//  BannerImageView.swift
//  ProfilePageWithSwiftUI
//
//  Created by Niraj on 08/08/22.
//

import SwiftUI

struct BannerImageView: View {
    //MARK: Property
  //  let product: Product
    let item: MenuItem

    //MARK: Body
    var body: some View {
        
        Image(item.image)
            .resizable()
            .scaledToFit()
            .background(Color.gray)
        
    }
}

struct BannerImageView_Previews: PreviewProvider {
    static var previews: some View {
        BannerImageView(item: MenuItem.example)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
