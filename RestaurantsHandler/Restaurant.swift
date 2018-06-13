//
//  Restaurant.swift
//  RestaurantsHandler
//
//  Created by etudiant on 04/05/2018.
//  Copyright © 2018 thomasecalle. All rights reserved.
//

import Foundation
class Restaurant {
    var restaurantName: String
    private var menu: [MenuItem]
    
    var menuItems: [MenuItem] {
        return menu
    }
    
    
    init(restaurantName: String, menu: [MenuItem] = []){
        self.restaurantName = restaurantName
        self.menu = menu
    }
    
    func addItem(_ item: MenuItem) -> Void {
        menu.append(item)
    }
    
    func deleteItem(_  item: MenuItem) -> Void {
        if let index = menu.index(of: item) {
            menu.remove(at: index)
        }
    }
}
