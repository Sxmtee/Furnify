//
//  CartView.swift
//  Furnify
//
//  Created by mac on 03/02/2025.
//

import SwiftUI

struct CartView: View {
    @Environment(CartManager.self) var cartManager
    
    var body: some View {
        ScrollView {
            if cartManager.products.count > 0 {
                ForEach(cartManager.products, id: \.id) { cart in
                    CartProductView(product: cart)
                }
                HStack {
                    Text("Your total is ")
                    Spacer()
                    Text("$ \(cartManager.total).00")
                        .bold()
                }
                .padding(.horizontal)
            } else {
                ContentUnavailableView("Your cart is empty", image: "trash")
            }
        }
        .navigationTitle("My Cart")
        .padding(.top)
    }
}

#Preview {
    CartView()
        .environment(CartManager())
}
