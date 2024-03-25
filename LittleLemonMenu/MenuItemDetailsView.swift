//
//  MenuItemDetailsView.swift
//  LittleLemonMenu
//
//  Copyright © 2024 Alelo. All rights reserved.
//

import SwiftUI

struct MenuItemDetailsView: View {

    @State var menuItem: MenuItem

    var body: some View {
        NavigationStack {
            VStack {
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 260, height: 260)
                    .clipped()

                Text("Price").fontWeight(.bold)
                Text("\(menuItem.price)")

                Text("Ordered").fontWeight(.bold)
                Text("\(menuItem.orderCounts)")

                List {
                    Section(header: Text("Ingredients").fontWeight(.bold)) {
                        ForEach(menuItem.ingredients, id: \.self) { ingredient in
                            Text(ingredient.rawValue)
                        }
                    }
                }
                Spacer()

            }.navigationTitle(menuItem.title)
        }
    }
}

#Preview {
    MenuItemDetailsView(
        menuItem:
            MenuItem(
                id: UUID(),
                price: 10,
                menuCategory: .food,
                orderCounts: 10,
                title: "test",
                ingredients: []
            )
    )
}
