//
//  ExView.swift
//  CircleRecruitment
//
//  Created by KangHo Kim on 2023/09/26.
//

import SwiftUI

// Define an enum for categories with associated values
enum ProductCategory {
    case parent(name: String, subcategories: [ProductCategory])
    case child(name: String)
    
    var name: String {
        switch self {
        case .parent(let name, _), .child(let name):
            return name
        }
    }
    
    var isParent: Bool {
        if case .parent = self {
            return true
        }
        return false
    }
    
    var subcategories: [ProductCategory]? {
        if case let .parent(_, subcategories) = self {
            return subcategories
        }
        return nil
    }
}

// Sample category hierarchy
let electronics = ProductCategory.parent(
    name: "Electronics",
    subcategories: [
        .child(name: "Smartphones"),
        .child(name: "Laptops"),
        .child(name: "Accessories")
    ]
)

let clothing = ProductCategory.parent(
    name: "Clothing",
    subcategories: [
        .child(name: "T-Shirts"),
        .child(name: "Jeans"),
        .child(name: "Shoes")
    ]
)


struct ExView: View {
    let categories: [ProductCategory] = [electronics, clothing]
    var body: some View {
        NavigationView {
            List(categories, id: \.name) { category in
                if category.isParent {
                    // Display parent category
                    Text(category.name)
                } else {
                    // Display child category
                    NavigationLink(destination: Text(category.name)) {
                        Text(category.name)
                    }
                }
            }
            .navigationTitle("Categories")
        }
    }
}

#Preview {
    ExView()
}
