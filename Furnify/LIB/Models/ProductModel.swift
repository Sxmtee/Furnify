//
//  ProductModel.swift
//  Furnify
//
//  Created by mac on 30/01/2025.
//

import Foundation


struct ProductModel: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var description: String
    var supplier: String
    var price: Int
}


var productList = [
    ProductModel(
        name: "Leather Couch",
        image: "fn1",
        description: "A comfortable leather couch",
        supplier: "IKEA",
        price: 3500
    ),
    ProductModel(
        name: "Besta Couch",
        image: "fn2",
        description: "A comfortable Beats couch",
        supplier: "MAX",
        price: 4500
    ),
    ProductModel(
        name: "Grey Couch",
        image: "fn3",
        description: "A comfortable Grey couch",
        supplier: "Walmart",
        price: 5500
    ),
    ProductModel(
        name: "Outdoor Couch",
        image: "fn4",
        description: "A comfortable Outdoor couch",
        supplier: "Home Depot",
        price: 6500
    ),
    ProductModel(
        name: "Beautiful Couch",
        image: "fn1",
        description: "A comfortable Beautiful couch",
        supplier: "IKEA",
        price: 7500
    ),
    ProductModel(
        name: "Cushion Couch",
        image: "fn2",
        description: "A comfortable Cushion couch",
        supplier: "Lenort",
        price: 8500
    ),
]
