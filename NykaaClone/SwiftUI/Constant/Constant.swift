//
//  Constant.swift
//  NykaaClone
//
//  Created by Purplle on 02/09/22.
//

import SwiftUI

let headerDatas: [HeaderData] = Bundle.main.decode("HeaderData.json")

let topBanners: [SecondTopBanner] = Bundle.main.decode("TopBanner.json")


let products: [MenuSection] =  Bundle.main.decode("menu.json")

let arrOfColors: [Gradient] = [Gradient(colors: [.purplleAppColor, .purplleLoghtColor]), Gradient(colors: [.orangeAppColor, .orangeLightColor]),Gradient(colors: [.appGreenColor, .appGreenColorLight]),Gradient(colors: [.purplleAppColor, .purplleLoghtColor]),Gradient(colors: [.purplleAppColor, .purplleLoghtColor]),Gradient(colors: [.purplleAppColor, .purplleLoghtColor]),Gradient(colors: [.purplleAppColor, .purplleLoghtColor])]

let imgSale: [String] = ["sale2","sale1","sale2"]


let columnSpacing: CGFloat = 0
let rowSpacing: CGFloat = 1

var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}
