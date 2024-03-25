//
//  MenuViewViewModel.swift
//  LittleLemonMenu
//
//  Copyright © 2024 Alelo. All rights reserved.
//

import Foundation

class MenuViewViewModel: ObservableObject {

    var foods: [MenuItem] = MockDataGenerator.generateFoodMenuItems()
    var desserts: [MenuItem] = MockDataGenerator.generateDessertMenuItems()
    var drinks: [MenuItem] = MockDataGenerator.generateDrinkMenuItems()
}
