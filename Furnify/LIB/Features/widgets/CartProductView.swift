//
//  CartProductView.swift
//  Furnify
//
//  Created by mac on 03/02/2025.
//

import SwiftUI

struct CartProductView: View {
    var product: ProductModel
    @Environment(CartManager.self) var cartManager
    
    var body: some View {
        HStack(spacing:20) {
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80)
                .clipShape(RoundedRectangle(cornerRadius: 7, style: .continuous))
                .padding(.vertical)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(product.name)
                    .bold()
                
                Text("$ \(product.price)")
                    .bold()
            }
            .padding()
            
            Spacer()
            
            Image(systemName: "trash")
                .foregroundStyle(.red)
                .onTapGesture {
                    cartManager.removeFromCart(product: product)
                }
        }
        .padding(.horizontal)
        .background(.kSecondary)
        .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
        .frame(width: .infinity, alignment: .leading)
        .padding(5)
    }
}

#Preview {
    CartProductView(product: productList[2])
        .environment(CartManager())
}
