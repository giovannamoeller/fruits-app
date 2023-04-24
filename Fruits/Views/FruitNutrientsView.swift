//
//  FruitNutrientsView.swift
//  Fruits
//
//  Created by Giovanna Moeller on 24/04/23.
//

import SwiftUI

struct FruitNutrientsView: View {
  
  var fruit: Fruit
  let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
  
  var body: some View {
    GroupBox() {
      DisclosureGroup("Nutritional value per 100g") {
        ForEach(0..<nutrients.count, id: \.self) { item in
          HStack {
            Text(nutrients[item])
            
            Spacer()
            
            Text(fruit.nutrition[item])
          }
        }
      }
    }
  }
}

struct FruitNutrientsView_Previews: PreviewProvider {
  static var previews: some View {
    FruitNutrientsView(fruit: fruitsData[0])
  }
}
