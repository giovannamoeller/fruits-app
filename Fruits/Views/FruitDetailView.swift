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
    Text(fruit.title)
  }
}

struct FruitDetailView_Previews: PreviewProvider {
  static var previews: some View {
    FruitDetailView(fruit: fruitsData[0])
  }
}
