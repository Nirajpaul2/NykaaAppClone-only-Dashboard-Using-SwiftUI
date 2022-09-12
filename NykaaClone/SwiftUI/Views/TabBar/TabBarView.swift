//
//  LandingView.swift
//  NykaaClone
//
//  Created by Purplle on 02/09/22.
//

import SwiftUI

struct TabBarView: View {
    
    
    //MARK: - Property
    @State var selection = 1
  
    init() {
        UITabBar.appearance().backgroundColor = .white
    }
    
    //MARK: - Body
    var body: some View {
        TabView(selection: $selection) {
            HomePageView()
                .tabItem {
                    if selection == 1 {
                        Image("tab1")
                    } else {
                        Image("tab1C")
                    }
                    Text("Beauty")
                }.tag(1)
           
            OffersView()
                .tabItem {
                    if selection == 2 {
                        Image("tab2")
                    } else {
                        Image("tab2C")
                    }
                    Text("Offers")
                }.tag(2)
          
            CategoryView()
                .tabItem {
                    if selection == 3 {
                        Image("tab3")
                    } else {
                        Image("tab3C")
                    }
                    Text("Categories")
                }.tag(3)
           
            ExploreView()
                .tabItem {
                    if selection == 4 {
                        Image("tab4")
                    } else {
                        Image("tab4C")
                    }
                    Text("Explore")
                }.tag(4)
            
            AccountView()
                .tabItem {
                    if selection == 5 {
                        Image("tab5")
                    } else {
                        Image("tab5")
                    }
                    Text("Account")
                }.tag(5)
        } //: TabBar
        .accentColor(.pink)
    }
}

//MARK: - Preview
struct LandingView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView().environmentObject(Order())
    }
}
