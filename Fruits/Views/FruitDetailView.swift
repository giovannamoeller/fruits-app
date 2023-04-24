//
//  FruitDetailView.swift
//  Fruits
//
//  Created by Giovanna Moeller on 24/04/23.
//

import SwiftUI

struct FruitDetailView: View {
  
  var fruit: Fruit
  
  var body: some View {
    NavigationView {
      ScrollView(.vertical, showsIndicators: false) {
        VStack (alignment: .center, spacing: 20) {
          
          ZStack {
            LinearGradient(colors: fruit.gradientColors, startPoint: .leading, endPoint: .trailing)
            Image(fruit.image)
              .resizable()
              .scaledToFit()
              .shadow(color: .black.opacity(0.15), radius: 8, x: 6, y: 8)
          }.frame(height: 440)
          
          VStack (alignment: .leading, spacing: 20) {
            Text(fruit.title)
              .font(.largeTitle)
              .fontWeight(.heavy)
              .foregroundColor(fruit.gradientColors[1])
            
            Text(fruit.headline)
              .font(.headline)
              .multilineTextAlignment(.leading)
            
            Text("Learn more about \(fruit.title)".uppercased())
              .fontWeight(.bold)
              .foregroundColor(fruit.gradientColors[1])
            
            Text(fruit.description)
              .multilineTextAlignment(.leading)
              
            
          }
          .padding(.horizontal, 20)
          .frame(maxWidth: 640, alignment: .center)
        }
      }
    }
  }
}

struct FruitDetailView_Previews: PreviewProvider {
  static var previews: some View {
    FruitDetailView(fruit: fruitsData[0])
  }
}
