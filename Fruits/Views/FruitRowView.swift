//
//  FruitRowView.swift
//  Fruits
//
//  Created by Giovanna Moeller on 24/04/23.
//

import SwiftUI

struct FruitRowView: View {
  
  var fruit: Fruit
  
  var body: some View {
    HStack(spacing: 12) {
      Image(fruit.image)
        .resizable()
        .scaledToFit()
        .frame(width: 80, height: 80, alignment: .center)
        .shadow(color: .black.opacity(0.3), radius: 3, x: 2, y: 2)
        .background(
          LinearGradient(colors: fruit.gradientColors, startPoint: .top, endPoint: .bottom)
        )
        .cornerRadius(8)
      
      VStack(alignment: .leading, spacing: 5) {
        Text(fruit.title)
          .font(.title2)
          .fontWeight(.bold)
        
        Text(fruit.headline)
          .font(.caption)
          .foregroundColor(.black.opacity(0.5))
      }
    }
  }
}

struct FruitRowView_Previews: PreviewProvider {
  static var previews: some View {
    FruitRowView(fruit: fruitsData[0])
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
