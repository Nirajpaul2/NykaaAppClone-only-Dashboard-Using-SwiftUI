//
//  SearchBarView.swift
//  NykaaClone
//
//  Created by Purplle on 02/09/22.
//

import SwiftUI

struct SearchBarView: View {
    
    @State var searchText: String = ""
    
    var body: some View {
        HStack {
            Image("search")
            .resizable()
            .frame(width: 20, height: 20)
            .foregroundColor(.gray)
            .padding(.leading, 15)
            
           // TextField("Search on Nykaa", text: $searchText)
            
            TextField("", text: $searchText, prompt:
            Text("Search on Nykaa")
                        
            )
            
        }
        .frame(width: .infinity, height: 40)
        .background(
            RoundedRectangle(cornerRadius: 8)
                .fill(.ultraThickMaterial)
                .shadow(color: .gray, radius: 0.8, x: 0.4, y: 0.7)
        )
        

    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
