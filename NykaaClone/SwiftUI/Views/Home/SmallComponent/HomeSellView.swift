//
//  HomeSellView.swift
//  NykaaClone
//
//  Created by Purplle on 06/09/22.
//

import SwiftUI

struct HomeSellView: View {
    var body: some View {
        
        GeometryReader { geometry in 
            ScrollView(.horizontal, showsIndicators: false) {

                LazyHGrid(rows: [GridItem(.flexible())], alignment: .center) {
                    ForEach(0 ..< imgSale.count) { item in
                        Image(imgSale[item])
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(10)
                           // .frame(width: geometry.size.width - 90, height: 150)
                    }
                }
            }
        }
    }
}

struct HomeSellView_Previews: PreviewProvider {
    static var previews: some View {
        HomeSellView()
    }
}
