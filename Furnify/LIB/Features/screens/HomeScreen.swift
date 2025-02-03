//
//  HomeScreen.swift
//  Furnify
//
//  Created by mac on 31/01/2025.
//

import SwiftUI

struct HomeScreen: View {
    @Environment(CartManager.self) var cartManager
    
    var body: some View {
        NavigationStack {
            ZStack(alignment: .top) {
                Color(.white)
                    .ignoresSafeArea(.all)
                
                ScrollView(showsIndicators: false) {
                    AppBar()
                    
                    SearchView()
                    
                    ImageSliderView()
                    
                    HStack {
                        Text("New Rivals")
                            .font(.title2)
                            .fontWeight(.medium)
                        
                        Spacer()
                        
                        Image(systemName: "circle.grid.2x2.fill")
                            .foregroundStyle(.kPrimary)
                    }
                    .padding(.vertical)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 10) {
                            ForEach(productList, id: \.id) { index in
                                NavigationLink(destination: Text(index.name)) {
                                    ProductCardView(product: index)
                                }
                            }
                        }
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    HomeScreen()
        .environment(CartManager())
}

