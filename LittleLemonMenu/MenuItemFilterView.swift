//
//  MenuItemFilterView.swift
//  LittleLemonMenu
//
//  Copyright © 2024 Alelo. All rights reserved.
//

import SwiftUI

struct MenuItemFilterView: View {

    @Environment(\.presentationMode) var presentationMode
    @Binding var sortedBy: SortOptions?
    @Binding var selected: Set<MenuCategory>?

    var body: some View {
        VStack {
            NavigationStack {
                List (MenuCategory.allCases, id: \.rawValue, selection: $selected) { category in
                    Button(action: {
                        if self.selected?.contains(category) ?? false {
                            self.selected?.remove(category)
                        } else {
                            self.selected?.insert(category)
                        }
                    }) {
                        Text(category.rawValue).foregroundColor(self.selected?.contains(category) ?? false ? Color.white : Color.accentColor)
                    }.background(self.selected?.contains(category) ?? false ? Color.accentColor : Color(.clear))                }
                .navigationTitle("Selected Categories")
            }
            NavigationStack {
                List (SortOptions.allCases, id: \.rawValue, selection: $sortedBy) { option in
                    Button(action: {
                        self.sortedBy = option
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Text(option.rawValue).foregroundColor(self.sortedBy == option ? Color.white : Color.accentColor)
                    }.background(self.sortedBy == option ? Color.accentColor : Color(.clear))
                }
                .navigationTitle("Sort by")
            }
        }
    }
}
