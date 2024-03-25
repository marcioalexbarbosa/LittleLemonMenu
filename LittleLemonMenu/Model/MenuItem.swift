//
//  MenuItem.swift
//  LittleLemonMenu
//
//  Copyright © 2024 Alelo. All rights reserved.
//

import Foundation

struct MenuItem: Identifiable, Hashable, MenuItemProtocol {

    var id: UUID
    var price: Int
    var menuCategory: MenuCategory
    var orderCounts: Int
    var title: String
    var ingredients: [Ingredient]
}
