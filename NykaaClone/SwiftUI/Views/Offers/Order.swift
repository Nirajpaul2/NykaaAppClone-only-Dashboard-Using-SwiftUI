//
//  Order.swift
//  NykaaClone
//
//  Created by Purplle on 02/09/22.
//

import SwiftUI

// Anything that conforms to ObservableObject can be used inside SwiftUI, and publish announcements when its values have changed so the user interface can be updated.
class Order: ObservableObject { //Without ObservableObject we wouldn’t be notified when an external value changes.
   
    //Apple provides a couple of different ways of publishing change announcements, but the easiest is to use the @Published property wrapper before any properties that should trigger change notifications.
   @Published var items = [MenuItem]()

    var total: Int {
        if items.count > 0 {
            return items.reduce(0) { $0 + $1.price }
        } else {
            return 0
        }
    }

    func add(item: MenuItem) {
        items.append(item)
    }

    func remove(item: MenuItem) {
        if let index = items.firstIndex(of: item) {
            items.remove(at: index)
        }
    }
}
