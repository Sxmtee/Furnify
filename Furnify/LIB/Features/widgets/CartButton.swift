//
//  CartButton.swift
//  Furnify
//
//  Created by mac on 31/01/2025.
//

import SwiftUI

struct CartButton: View {
    var numberOfProducts: Int
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Image(systemName: "bag.fill")
                .font(.largeTitle)
                .foregroundStyle(.black)
                .padding(5)
            if numberOfProducts > 0 {
                Text("\(numberOfProducts)")
                    .font(.caption2)
                    .foregroundStyle(.white)
                    .frame(width: 20, height: 20)
                    .background(.green)
                    .clipShape(RoundedRectangle(cornerRadius: 50))
            }
        }
    }
}

#Preview {
    CartButton(numberOfProducts: 30)
}
