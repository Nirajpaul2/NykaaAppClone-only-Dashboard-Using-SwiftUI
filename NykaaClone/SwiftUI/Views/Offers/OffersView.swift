//
//  OffersView.swift
//  NykaaClone
//
//  Created by Purplle on 02/09/22.
//

import SwiftUI

struct OffersView: View {
    
    var body: some View {
        
        //ScrollView
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                    LazyVGrid(columns: gridLayout, spacing: 1) {
                        ForEach(products) { section in
                            Section(header:  Text(section.name).font(.subheadline).fontWeight(.bold).foregroundColor(.white)){
                                ForEach(section.items) { item in
                                    NavigationLink(destination: ProductDetails(item: item)){
                                        ProductItemView(item: item)
                                            .background(Color.white)
                                           
                                    } //: NavLink
                                }//: ForEach
                            } //: Section
                        } //: loop
                       
                    } //: Grid
                    .background(Color.gray)
                    .navigationTitle("Products")
                
            }
        }
    }
}

struct OffersView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
        OffersView()
        }
    }
}
