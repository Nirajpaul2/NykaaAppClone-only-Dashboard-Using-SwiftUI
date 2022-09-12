//
//  TopStaticProductView.swift
//  NykaaClone
//
//  Created by Purplle on 06/09/22.
//

import SwiftUI

struct TopStaticProductView: View {
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: [GridItem(.flexible())], alignment: .center, spacing: 30) {
                ForEach(0...6, id:\.self) { item in
                    TopCardView(headerData: headerDatas[item], arrOfColors: arrOfColors[item])
                        .frame(width: .infinity, height: 80)
                }
            }
           
        }
    }
}

struct TopStaticProductView_Previews: PreviewProvider {
    static var previews: some View {
        TopStaticProductView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
