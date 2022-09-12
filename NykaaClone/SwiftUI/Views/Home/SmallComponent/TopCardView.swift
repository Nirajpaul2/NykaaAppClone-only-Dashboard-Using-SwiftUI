//
//  TopCardView.swift
//  NykaaClone
//
//  Created by Purplle on 02/09/22.
//

import SwiftUI

struct TopCardView: View {
    
    var headerData: HeaderData
    
    var arrOfColors: Gradient
    
    var body: some View {
        HStack {
            HStack {}.frame(width: 20, height: 70)
           
            HStack {
                Text(headerData.name)
                    .font(.system(.footnote))
                    .padding(.leading, 10)
                    .padding(.top, 5)
                    .padding(.bottom, 4)
                Spacer()
                Image(headerData.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 100)
                    .offset(x: 0, y: 15)
            }
            .frame(width: 130, height: 50)
            .background(
                RoundedRectangle(cornerRadius: 0)
                    .fill(LinearGradient(gradient: arrOfColors, startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(6, corners: [.topRight, .bottomRight])

            )
            
        }
        .frame(width: 120, height: 50)
        .background(
            RoundedRectangle(cornerRadius: 8)
                .fill(
                    LinearGradient(gradient:arrOfColors, startPoint: .bottom, endPoint: .top)
                )
 
        )
       
        
    }
}

struct TopCardView_Previews: PreviewProvider {
    static var previews: some View {
        TopCardView(headerData: headerDatas[5], arrOfColors: Gradient(colors: [.purplleAppColor, .purplleLoghtColor]))
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
