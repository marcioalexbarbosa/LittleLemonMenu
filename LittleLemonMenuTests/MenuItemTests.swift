//
//  MenuItemTests.swift
//  LittleLemonMenuTests
//
//  Copyright © 2024 Alelo. All rights reserved.
//

import Foundation
import XCTest

@testable import LittleLemonMenu

final class MenuItemTests: XCTestCase {

    func test_givenMenuItem_whenInitialized_it_hasFieldsInitialized() {
        let menuItem = MenuItem(
            id: UUID(),
            price: 10,
            menuCategory: .food,
            orderCounts: 20,
            title: "soup",
            ingredients: [
                .broccoli,
                .carrot,
                .tomato
            ]
        )

        XCTAssertNotNil(menuItem.id)
        XCTAssertEqual(menuItem.price, 10)
        XCTAssertEqual(menuItem.menuCategory, .food)
        XCTAssertEqual(menuItem.orderCounts, 20)
        XCTAssertEqual(menuItem.title, "soup")
        XCTAssertTrue(menuItem.ingredients.count == 3)
    }
}
