//
//  Product.swift
//  EcommerceSwiftUI
//
//  Created by Rustam Keneev on 28/5/24.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var description: String
    var supplier: String
    var price: Int
}

var productList = [
    Product(name: "Title 1", image: "im1", description: "Description 1", supplier: "IKEA", price: 500),
    Product(name: "Title 2", image: "im2", description: "Description 2", supplier: "IKEA", price: 600),
    Product(name: "Title 3", image: "im3", description: "Description 3", supplier: "IKEA", price: 300),
    Product(name: "Title 4", image: "im4", description: "Description 4", supplier: "IKEA", price: 300),
    Product(name: "Title 5", image: "im5", description: "Description 5", supplier: "IKEA", price: 300),
    Product(name: "Title 6", image: "im6", description: "Description 6", supplier: "IKEA", price: 300),
]
