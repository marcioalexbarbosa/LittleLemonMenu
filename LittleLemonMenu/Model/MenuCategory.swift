//
//  FoodCategories.swift
//  LittleLemonMenu
//
//  Copyright © 2024 Alelo. All rights reserved.
//

import Foundation

enum MenuCategory: String, CaseIterable, Identifiable {
   
    case food = "Food"
    case drink = "Drink"
    case dessert = "Dessert"

    var id: String { return self.rawValue }
}
