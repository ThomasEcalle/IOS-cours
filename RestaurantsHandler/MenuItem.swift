//
//  MenuItem.swift
//  RestaurantsHandler
//
//  Created by etudiant on 04/05/2018.
//  Copyright © 2018 thomasecalle. All rights reserved.
//

import Foundation
struct MenuItem: Equatable {
    
    var name: String
    var itemDetails: String
    var price: Double
    var category: String
    var imageURL: String
    var isVegan: Bool
    var isGlutenFree: Bool
    
    static func ==(lhs: MenuItem, rhs: MenuItem) -> Bool {
        return lhs.name == rhs.name
    }
    
}
