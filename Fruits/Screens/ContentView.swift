//
//  ContentView.swift
//  Fruits
//
//  Created by Giovanna Moeller on 23/04/23.
//

import SwiftUI

struct ContentView: View {
  
  private let fruits: [Fruit] = fruitsData
  
  var body: some View {
    NavigationView {
      List {
        ForEach(fruits.shuffled()) { fruit in
          FruitRowView(fruit: fruit)
            .padding(4)
        }
      }
      .navigationTitle("Fruits")
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
