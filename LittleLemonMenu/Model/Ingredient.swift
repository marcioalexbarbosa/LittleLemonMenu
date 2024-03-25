//
//  Ingredient.swift
//  LittleLemonMenu
//
//  Copyright © 2024 Alelo. All rights reserved.
//

import Foundation

enum Ingredient: String, CaseIterable {

    case spinhach = "Spinach"
    case broccoli = "Broccoli"
    case carrot = "Carrot"
    case pasta = "Pasta"
    case tomato = "Tomato sauce"
    case sugar = "Sugar"
    case vodka = "Vodka"
    case martini = "Martini"
    case absint = "Absint"
    case mint = "Mint"
    case olive = "Olive"
    case chantily = "Chantily"
    case strawberry = "Strawberry"
    case tangerine = "Tangerine"
    case milk = "Milk"

    static func foodIngredients() -> [Ingredient] {
        [.spinhach,
         .broccoli,
         .carrot,
         .pasta,
         .tomato,
         .olive
        ]
    }

    static func dessertIngredients() -> [Ingredient] {
        [.mint,
         .olive,
         .chantily,
         .strawberry,
         .chantily,
         .milk
        ]
    }

    static func drinkIngredients() -> [Ingredient] {
        [.sugar,
         .vodka,
         .martini,
         .absint,
         .olive,
         .mint
        ]
    }

}
