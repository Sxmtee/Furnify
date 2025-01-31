//
//  ContentView.swift
//  Furnify
//
//  Created by mac on 30/01/2025.
//

import SwiftUI

enum Tab: String, CaseIterable {
    case Home = "house"
    case Search = "magnifyingglass"
    case Notifications = "bell"
    case Cart = "bag"
    case Profile = "person"
    
    var Tabname: String {
        switch self {
        case .Home:
            return "Home"
        case .Search:
            return "Search"
        case .Notifications:
            return "Notifications"
        case .Cart:
            return "Cart"
        case .Profile:
            return "Profile"
        }
    }
}

struct ContentView: View {
    @State private var cartManager = CartManager()
    @State private var currentTab: Tab = .Home
    @Namespace var animation
    
    var body: some View {
        TabView(selection: $currentTab) {
            Text("Home View")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.white)
                .tag(Tab.Home)
            
            Text("Search View")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.white)
                .tag(Tab.Search)
            
            Text("Notifications View")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.white)
                .tag(Tab.Notifications)
            
            Text("Cart View")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.white)
                .tag(Tab.Cart)
            
            Text("Profile View")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.white)
                .tag(Tab.Profile)
        }
        
        // Custom Tab Bar
        HStack(spacing: 0) {
            ForEach(Tab.allCases, id: \.self) { tab in
                TabButton(
                    tab: tab,
                    currentTab: $currentTab,
                    animation: animation
                )
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 20)
        .background(.kSecondary)
        .clipShape(Capsule())
        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
        .padding(.horizontal, 20)
    }
}



#Preview {
    ContentView()
        .environment(CartManager())
}
