//
//  MenuSection.swift
//  NykaaClone
//
//  Created by Purplle on 02/09/22.
//

import SwiftUI

// Use of Identifiable: It is a protocol, used when you have id Var inside the class.

struct MenuSection: Codable, Identifiable {
    var id: UUID
    var name: String
    var items: [MenuItem]
}

struct MenuItem: Codable, Equatable, Identifiable {
    var id: UUID
    var image: String
    var name: String
    var price: Int
    var description: String

    #if DEBUG
    static let example = MenuItem(id: UUID(), image: "c1", name: "Joseph Gonzalez", price: 6, description: "Sweet, fluffy, and served piping hot, our French toast is flown in fresh every day from Maple City, Canada, which is where all maple syrup in the world comes from. And if you believe that, we have some land to sell you…")
    #endif
}
