//
//  ImageSliderView.swift
//  Furnify
//
//  Created by mac on 30/01/2025.
//

import SwiftUI

struct ImageSliderView: View {
    @State private var currentIndex = 0
    var slides: [String] = ["fn1", "fn2", "fn3", "fn4"]
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            // Image Slider
            ZStack(alignment: .trailing) {
                ForEach(slides.indices, id: \.self) { index in
                    Image(slides[index])
                        .resizable()
                        .scaledToFill()
                        .frame(maxWidth: .infinity, maxHeight: 200)
                        .clipped()
                        .cornerRadius(15)
                        .opacity(currentIndex == index ? 1 : 0)
                        .animation(.easeInOut(duration: 0.5), value: currentIndex)
                }
            }
            
            // Dots Indicator
            HStack {
                ForEach(slides.indices, id: \.self) { index in
                    Circle()
                        .fill(currentIndex == index ? .kPrimary : .kSecondary)
                        .frame(width: 10, height: 10)
                }
            }
            .padding()
        }
        .padding()
        .onAppear {
            Timer.scheduledTimer(withTimeInterval: 5, repeats: true) { timer in
                withAnimation {
                    currentIndex = (currentIndex + 1) % slides.count
                }
            }
        }
    }
}

#Preview {
    ImageSliderView()
}
