//
//  CartManager.swift
//  Furnify
//
//  Created by mac on 30/01/2025.
//

import Foundation

@Observable
class CartManager {
    private(set) var products: [ProductModel] = []
    private(set) var total: Int = 0
    
    func addToCart(product: ProductModel) {
        products.append(product)
        total += product.price
    }
    
    func removeFromCart(product: ProductModel) {
        products = products.filter { $0.id != product.id }
        total -= product.price
    }
}
