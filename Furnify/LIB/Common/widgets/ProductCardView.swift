//
//  ProductCardView.swift
//  Furnify
//
//  Created by mac on 31/01/2025.
//

import SwiftUI

struct ProductCardView: View {
    @Environment(CartManager.self) private var cartManager
    var product: ProductModel
    
    var body: some View {
        ZStack {
            Color(.kSecondary)
            
            VStack(alignment: .center) {
                Image(product.image)
                    .resizable()
                    .frame(width: 175, height: 160)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    
                HStack(alignment: .lastTextBaseline) {
                    VStack(alignment: .leading) {
                        Text(product.name)
                            .font(.headline)
                        
                        Text(product.supplier)
                            .foregroundStyle(.gray)
                            .font(.caption)
                        
                        Text("$ \(product.price)")
                    }
                    
                    Spacer()
                    
                    Button {
                        cartManager.addToCart(product: product)
                    } label: {
                        Image(systemName: "plus.circle.fill")
                            .resizable()
                            .foregroundStyle(.kPrimary)
                            .frame(width: 35, height: 35)
                    }
                }
                .padding(.horizontal, 6)
            }
        }
        .frame(width: 185, height: 260)
        .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}

#Preview {
    ProductCardView(product: productList[0])
        .environment(CartManager())
}
