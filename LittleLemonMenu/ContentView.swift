//
//  ContentView.swift
//  LittleLemonMenu
//
//  Copyright © 2024 Alelo. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    @StateObject var viewModel: MenuViewViewModel = MenuViewViewModel()
    @State var sortedBy: SortOptions?
    @State var selected: Set<MenuCategory>? = [.food, .drink, .dessert]

    var body: some View {
        NavigationView {
            VStack {
                MenuItemsView(viewModel: viewModel, sortedBy: $sortedBy, selected: $selected)
            }
            .padding()
            .navigationBarTitle(Text("Menu"))
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: MenuItemFilterView(sortedBy: $sortedBy, selected: $selected)) {
                        Image( "filter_bar")
                            .resizable()
                            .frame(width: 32.0, height: 32.0)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
