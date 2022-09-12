//
//  HeaderData.swift
//  NykaaClone
//
//  Created by Purplle on 02/09/22.
//

import SwiftUI

struct HeaderData: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}


struct SecondTopBanner: Codable,Identifiable {
    let id: Int
    let image: String
}
