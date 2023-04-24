//
//  FruitCardView.swift
//  Fruits
//
//  Created by Giovanna Moeller on 23/04/23.
//

import SwiftUI

struct FruitCardView: View {
  
  @State private var isAnimating: Bool = false
  @AppStorage("isOnboarding") var isOnboarding: Bool?

  let fruit: Fruit
  
  var body: some View {
    VStack(spacing: 20) {
      Image(fruit.image)
        .resizable()
        .scaledToFit()
        .shadow(color: .black.opacity(0.15), radius: 8, x: 6, y: 8)
        .scaleEffect(isAnimating ? 1.0 : 0.6)
      
      Text(fruit.title)
        .font(.largeTitle)
        .fontWeight(.heavy)
        .foregroundColor(.white)
        .shadow(color: .black.opacity(0.15), radius: 2, x: 2, y: 2)
      
      Text(fruit.headline)
        .font(.title3)
        .foregroundColor(.white)
        .padding(.horizontal, 12)
        .multilineTextAlignment(.center)
        .frame(maxWidth: 480)
      
      Button {
        isOnboarding = false
      } label: {
        HStack {
          Text("Start")
            .font(.title3)
          
          Image(systemName: "arrow.right.circle")
            .font(.title3)
            //.imageScale(.large)
        }
        .foregroundColor(.white)
        .padding(.vertical, 8)
        .padding(.horizontal, 16)
        .overlay (
          Capsule().strokeBorder(Color.white, lineWidth: 1.5)
        )
      }
    }
    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
    .background(
      LinearGradient(
        colors: fruit.gradientColors,
        startPoint: .top,
        endPoint: .bottom
      )
    )
    .cornerRadius(16)
    .padding(.horizontal, 16)
    .onAppear {
      withAnimation(.easeOut(duration: 0.5)) {
        isAnimating = true
      }
    }
  }
}

struct FruitCardView_Previews: PreviewProvider {
  static var previews: some View {
    FruitCardView(fruit: fruitsData[0])
  }
}
