//
//  FruitCardView.swift
//  Fruits
//
//  Created by Giovanna Moeller on 23/04/23.
//

import SwiftUI

struct FruitCardView: View {
  var body: some View {
    VStack(spacing: 20) {
      Image("blueberry")
        .resizable()
        .scaledToFit()
        .shadow(color: .black.opacity(0.15), radius: 8, x: 6, y: 8)
      
      Text("Blueberry")
        .font(.largeTitle)
        .fontWeight(.heavy)
        .foregroundColor(.white)
        .shadow(color: .black.opacity(0.15), radius: 2, x: 2, y: 2)
      
      Text("Blueberries are sweet, nutritious and wildly popular fruit all over the world.")
        .font(.title3)
        .foregroundColor(.white)
        .multilineTextAlignment(.center)
        .frame(maxWidth: 480)
    }
    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
    .background(
      LinearGradient(
        colors: [Color("ColorBlueberryLight"), Color("ColorBlueberryDark")],
        startPoint: .top,
        endPoint: .bottom
      )
    )
    .cornerRadius(16)
    .padding()
    .shadow(radius: 30)
  }
}

struct FruitCardView_Previews: PreviewProvider {
  static var previews: some View {
    FruitCardView()
  }
}
