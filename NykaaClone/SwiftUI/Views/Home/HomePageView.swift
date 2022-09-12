//
//  HomePageView.swift
//  NykaaClone
//
//  Created by Purplle on 02/09/22.
//

import SwiftUI

var gridLayout2: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 1)
}

struct HomePageView: View {
    
    init() {
        UITableView.appearance().separatorColor = UIColor.clear
    }
    
    //MARK: - Body
    var body: some View {
        
        NavigationView {
            
            VStack() {
                SearchBarView()
                    .padding(.horizontal, 20)
                GeometryReader { geometry in
                    
                    List() {
                        
                        Section {
                            TopStaticProductView()
                        }
                        .listRowInsets(EdgeInsets(top: 10, leading: 15, bottom: 0, trailing: 0))
                        
                        
                        Section {
                            ScrollView(.horizontal, showsIndicators: false) {
                                
                                FeaturedTabView()
                                    .frame(width: geometry.size.width, height: 330, alignment: .center)
                                
                            }
                        }
                        .listRowInsets(EdgeInsets(top: -10, leading: 0, bottom: -10, trailing: 0))
                        
                        Section {
                            HomeSellView()
                                .frame(width: geometry.size.width-30, height: 200)
                        }
                        .listRowInsets(EdgeInsets(top: 15, leading: 15, bottom: 15, trailing: 0))
                        
                        Section {
                            Image("sbi")
                                .resizable()
                                .scaledToFit()
                        }
                        .listRowInsets(EdgeInsets(top: 15, leading: 10, bottom: 15, trailing: 10))
                        
                        Section {
                            GIFView(gifName: "dateBanner")
                                .frame(width: geometry.size.width-30, height: 110)
                                .cornerRadius(5)
                            
                        }
                        .listRowInsets(EdgeInsets(top: 15, leading: 15, bottom: 15, trailing: 10))
                        
                        
                        Section {
                            
                            Text("TOP BRANDS")
                                .fontWeight(.bold)
                                .multilineTextAlignment(.leading)
                            
                            TopBannerListingsItems()
                                .frame(width: .infinity, height: CGFloat(topBanners.count*220), alignment: .center)
                            
                        }
                        .padding(EdgeInsets(top: 0, leading: -5, bottom: 10, trailing: -5))
                        
                        Section {
                            
                            Text("TOP BRANDS")
                                .fontWeight(.bold)
                                .multilineTextAlignment(.leading)
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                
                                LazyHGrid(rows: gridLayout2, spacing: 5) {
                                        ForEach(products) { section in
                                                ForEach(section.items) { item in
                                                    NavigationLink(destination: ProductDetails(item: item)){
                                                        ProductItemView(item: item)
                                                            .background(
                                                                Rectangle().fill(
                                                                    Color.white
                                                                )
                                                                    .cornerRadius(8)
                                                                    .border(.gray, width: 1)
                                                            )
                                                            .frame(width: 200, height: 300, alignment: .center)
                                                            .padding(.bottom, 30)
                                                    } //: NavLink
                                                }//: ForEach
                                        } //: loop
                                    } //: Grid
                                .background(Color.white)
                            }
                        }
                    } //: List
                    .listStyle(PlainListStyle())
                    
                } //: Geometry Reader
                .appBar(title:"", trillingBarIcons: ["bell","heart","beg"]) {
                    
                } searchButtonAction: {
                    
                } myCartButtonAction: {
                    
                } profileButtonAction: {
                    
                }
            }
            
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

//MARK: - Preview
struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}
