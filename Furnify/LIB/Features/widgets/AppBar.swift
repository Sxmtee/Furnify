//
//  AppBar.swift
//  Furnify
//
//  Created by mac on 31/01/2025.
//

import SwiftUI

struct AppBar: View {
    @Environment(CartManager.self) var cartManager
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                HStack {
                    Image(systemName: "location.north.fill")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .padding(.trailing)
                    
                    Text("Shanghai, China")
                        .font(.title2)
                        .foregroundStyle(.gray)
                    
                    Spacer()
                    
                    NavigationLink(destination: CartView()) {
                        CartButton(numberOfProducts: cartManager.products.count)
                    }
                }
                
                Text("Find The Most \nLuxurious")
                    .font(.largeTitle .bold())
                + Text(" Furniture")
                    .font(.largeTitle .bold())
                    .foregroundStyle(.kPrimary)
            }
        }
    }
}
