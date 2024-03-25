//
//  MockDataGenerator.swift
//  LittleLemonMenu
//
//  Copyright © 2024 Alelo. All rights reserved.
//

import Foundation

struct MockDataGenerator {

    static let mealArray = ["Pizza", "Salad", "Burger", "Soup", "Steak", "Pasta", "Sandwich", "Taco", "Sushi", "Chicken", "Rice", "Lasagna"]
    static let dessertArray = ["Cake", "Pie", "Ice Cream", "Cookie", "Brownie", "Cupcake", "Pudding", "Donut", "Cheesecake", "Mousse", "Gelato", "Tart"]
    static let drinksArray = ["Coffee", "Tea", "Water", "Soda", "Juice", "Milk", "Smoothie", "Lemonade", "Cocktail", "Beer", "Wine", "Sake"]

    static func generateFoodMenuItems() -> [MenuItem] {
        var items: [MenuItem] = []

        // foods
        for index in 0...11 {
            items.append(
                MenuItem(
                    id: UUID(),
                    price: Int.random(in: 10...100),
                    menuCategory: .food,
                    orderCounts: Int.random(in: 10...100),
                    title: mealArray[index],
                    ingredients: generateIngredients(
                        from: Ingredient.foodIngredients()
                    )
                )
            )
        }

        return items
    }

    static func generateDessertMenuItems() -> [MenuItem] {
        var items: [MenuItem] = []

        // desserts
        for index in 0...7 {
            items.append(
                MenuItem(
                    id: UUID(),
                    price: Int.random(in: 10...100),
                    menuCategory: .dessert,
                    orderCounts: Int.random(in: 10...100),
                    title: dessertArray[index],
                    ingredients: generateIngredients(
                        from: Ingredient.dessertIngredients()
                    )
                )
            )
        }

        return items
    }

    static func generateDrinkMenuItems() -> [MenuItem] {
        var items: [MenuItem] = []

        // drinks
        for index in 0...3 {
            items.append(
                MenuItem(
                    id: UUID(),
                    price: Int.random(in: 10...100),
                    menuCategory: .drink,
                    orderCounts: Int.random(in: 10...100),
                    title: drinksArray[index],
                    ingredients: generateIngredients(
                        from: Ingredient.drinkIngredients()
                    )
                )
            )
        }

        return items
    }

    static private func generateIngredients(from: [Ingredient]) -> [Ingredient] {
        var ingredients: Set<Ingredient> = []
        let factor = Int.random(in: 1...6)
        for _ in 0...factor {
            ingredients.insert(from.randomElement() ?? from[0])
        }
        return Array(ingredients)
    }
}
