//
//  SortOptions.swift
//  LittleLemonMenu
//
//  Copyright © 2024 Alelo. All rights reserved.
//

enum SortOptions: String, CaseIterable, Identifiable {
    case popular = "Most Popular"
    case price = "Price $-$$$"
    case alphabetical = "A-Z"

    var id: String { return self.rawValue }
}
