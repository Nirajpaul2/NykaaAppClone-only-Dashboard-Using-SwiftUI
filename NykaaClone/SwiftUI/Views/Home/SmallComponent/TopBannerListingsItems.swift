//
//  TopBannerListingsItems.swift
//  NykaaClone
//
//  Created by Purplle on 04/09/22.
//

import SwiftUI

struct TopBannerListingsItems: View {
    
    init() {
        
        UITableView.appearance().separatorColor = UIColor.clear
       
       }
    
    var body: some View {
        
        GeometryReader { geometry in
            List() {
                ForEach(0..<topBanners.count-1) { banner in
                    TopBrandListItem(topBanner: topBanners[banner])
                        .frame(width: .infinity, height: 250, alignment: .center)
                    
                }
            }
            .listStyle(PlainListStyle())
            .padding(EdgeInsets(top: 10, leading: -20, bottom: 10, trailing: -20))
            .onAppear { UITableView.appearance().isScrollEnabled = false }
        }
       
    }
}

struct TopBannerListingsItems_Previews: PreviewProvider {
    static var previews: some View {
        TopBannerListingsItems()
    }
}
