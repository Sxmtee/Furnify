//
//  SearchView.swift
//  Furnify
//
//  Created by mac on 30/01/2025.
//

import SwiftUI

struct SearchView: View {
    @State private var search = ""
    var body: some View {
        HStack {
            TextAreas(
                text: $search,
                title: nil,
                hintText: "Search for furniture",
                borderColor: .kSecondary,
                icon: "magnifyingglass"
            )
            
            Image(systemName: "camera")
                .padding()
                .foregroundStyle(.white)
                .background(
                    RoundedRectangle(cornerRadius: 12)
                        .fill(.kPrimary)
                )
        }
        .padding(.horizontal)
    }
}

#Preview {
    SearchView()
}
