//
//  FeaturedTabView.swift
//  ProfilePageWithSwiftUI
//
//  Created by Niraj on 08/08/22.
//
import SwiftUI

struct FeaturedTabView: View {
   
    init() {
        UIPageControl.appearance().currentPageIndicatorTintColor = .red
        UIPageControl.appearance().pageIndicatorTintColor = .gray
        UIPageControl.appearance().tintColor = .gray
    }
    
    var body: some View {
        TabView() {
            ForEach(0..<topBanners.count-1) { banner in
                FeaturedItemView(topBanner: topBanners[banner])
                   .frame(width: .infinity, height: 250, alignment: .center)
            }
        }// Tabview
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            .previewLayout(.fixed(width: 420, height: 320))
            .background(Color.gray)
        
        
    }
}
