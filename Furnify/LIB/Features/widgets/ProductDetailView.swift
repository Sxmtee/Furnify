//
//  ProductDetailView.swift
//  Furnify
//
//  Created by mac on 03/02/2025.
//

import SwiftUI

struct ProductDetailView: View {
    var product: ProductModel
    
    var body: some View {
        ScrollView {
            ZStack {
                Color.white
                
                VStack(alignment: .leading) {
                    ZStack(alignment: .topTrailing) {
                        Image(product.image)
                            .resizable()
                            .ignoresSafeArea(edges: .top)
                            .frame(height: 300)
                        
                        Image(systemName: "heart.fill")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .padding(.top, 63)
                            .padding(.trailing, 20)
                    }
                    
                    VStack(alignment: .leading) {
                        HStack {
                            Text(product.name)
                                .font(.title2 .bold())
                            
                            Spacer()
                            
                            Text("$\(product.price).00")
                                .font(.title2)
                                .fontWeight(.semibold)
                        }
                        
                        HStack(spacing: 10) {
                            ForEach(0..<5) { index in
                                Image(systemName: "star.fill")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                    .foregroundStyle(.yellow)
                            }
                            Text("(4.5)")
                                .foregroundStyle(.gray)
                            
                            Spacer()
                            
                            HStack {
                                Button {
                                    //
                                } label: {
                                    Image(systemName: "minus.square")
                                }
                                Text("1")
                                Button {
                                    //
                                } label: {
                                    Image(systemName: "plus.square.fill")
                                        .foregroundStyle(.kPrimary)
                                }
                            }
                        }
                        .padding(.vertical)
                        
                        Text("Description")
                            .font(.title3)
                            .fontWeight(.medium)
                            .padding(.bottom, 2)
                        
                        Text(product.description)
                    }
                    .padding()
                    .background(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .offset(y: -30)
                }
            }
        }
        .ignoresSafeArea(edges: .top)
    }
}

#Preview {
    ProductDetailView(product: productList[3])
}
