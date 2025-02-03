//
//  ProductView.swift
//  Furnify
//
//  Created by mac on 03/02/2025.
//

import SwiftUI

struct ProductView: View {
    @Environment(CartManager.self) var cartManager
    
    var column = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: column, spacing: 20) {
                    ForEach(productList, id: \.id) { product in
                        ProductCardView(product: product)
                    }
                }
            }
            .padding(3)
        }
    }
}

#Preview {
    ProductView()
        .environment(CartManager())
}
