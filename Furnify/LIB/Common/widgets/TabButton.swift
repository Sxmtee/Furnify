//
//  TabButton.swift
//  Furnify
//
//  Created by mac on 30/01/2025.
//

import SwiftUI

struct TabButton: View {
    var tab: Tab
    @Binding var currentTab: Tab
    var animation: Namespace.ID
    
    var body: some View {
        Button {
            withAnimation {
                currentTab = tab
            }
        } label: {
            VStack {
                Image(systemName: tab.rawValue)
                    .font(.system(size: 24))
                    .foregroundColor(currentTab == tab ? .kPrimary : .gray)
//                    .frame(height: 24)
            }
            .frame(maxWidth: .infinity)
            .padding(10)
            .background(
                ZStack {
                    if currentTab == tab {
                        Capsule()
                            .fill(Color("kPrimary").opacity(0.1))
                            .matchedGeometryEffect(id: "TAB", in: animation)
                    }
                }
            )
        }
    }
}
