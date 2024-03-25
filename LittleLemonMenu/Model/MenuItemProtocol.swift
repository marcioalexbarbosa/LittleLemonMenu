//
//  MenuItemProtocol.swift
//  LittleLemonMenu
//
//  Copyright © 2024 Alelo. All rights reserved.
//

import Foundation

protocol MenuItemProtocol {

    var id: UUID { get }
    var price: Int { get }
    var title: String { get }
    var menuCategory: MenuCategory { get }
    var orderCounts: Int { get set }
    var ingredients: [Ingredient] { get }
}
