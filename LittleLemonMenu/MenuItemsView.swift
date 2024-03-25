//
//  MenuItemsView.swift
//  LittleLemonMenu
//
//  Copyright © 2024 Alelo. All rights reserved.
//

import SwiftUI

struct MenuItemsView: View {
    
    @StateObject var viewModel: MenuViewViewModel
    @Binding var sortedBy: SortOptions?
    @Binding var selected: Set<MenuCategory>?
    
    private let adaptiveColumn = [
        GridItem(.adaptive(minimum: 100))
    ]
    
    func sortItems(item1: MenuItem, item2: MenuItem) -> Bool {
        switch sortedBy {
        case .price:
            return item1.price < item2.price
        default:
            return item1.title < item2.title
        }
    }
    
    var body: some View {
        
        ScrollView{
            LazyVGrid(columns: adaptiveColumn, spacing: 10) {
                if selected?.contains(.food) ?? false {
                    Section(header: HStack {
                        Text("Foods")
                            .background(Color.white).font(.title)
                        Spacer()
                    }) {
                        ForEach(viewModel.foods.sorted(by: sortItems), id: \.self) { item in
                            NavigationLink(destination: MenuItemDetailsView(menuItem: item)) {
                                VStack {
                                    Text(String(item.title))
                                    Text("$ \(String(item.price))")
                                    Text("# \(String(item.orderCounts))")
                                }
                            }.frame(width: 100, height: 100, alignment: .center)
                                .background(.gray)
                                .cornerRadius(10)
                                .foregroundColor(.white)
                                .font(.body)
                        }
                    }
                }
                if selected?.contains(.dessert) ?? false {
                    
                    Section(header: HStack {
                        Text("Desserts")
                            .background(Color.white).font(.title)
                        Spacer()
                    }) {
                        ForEach(viewModel.desserts.sorted(by: sortItems), id: \.self) { item in
                            NavigationLink(destination: MenuItemDetailsView(menuItem: item)) {
                                VStack {
                                    Text(String(item.title))
                                    Text("$ \(String(item.price))")
                                    Text("# \(String(item.orderCounts))")
                                }
                            }.frame(width: 100, height: 100, alignment: .center)
                                .background(.cyan)
                                .cornerRadius(10)
                                .foregroundColor(.white)
                                .font(.body)
                        }
                    }
                }
                
                if selected?.contains(.drink) ?? false {
                    
                    Section(header: HStack {
                        Text("Drinks")
                            .background(Color.white).font(.title)
                        Spacer()
                    }) {
                        ForEach(viewModel.drinks.sorted(by: sortItems), id: \.self) { item in
                            NavigationLink(destination: MenuItemDetailsView(menuItem: item)) {
                                VStack {
                                    Text(String(item.title))
                                    Text("$ \(String(item.price))")
                                    Text("# \(String(item.orderCounts))")
                                }
                            }.frame(width: 100, height: 100, alignment: .center)
                                .background(.green)
                                .cornerRadius(10)
                                .foregroundColor(.white)
                                .font(.body)
                        }
                    }
                }
            }
        }.padding()
    }
}
