//
//  FruitModel.swift
//  Fruits
//
//  Created by Giovanna Moeller on 23/04/23.
//

import SwiftUI

struct Fruit: Identifiable {
  let id: UUID = UUID()
  let title: String
  let headline: String
  let image: String
  let gradientColors: [Color]
  let description: String
  let nutrition: [String]
}
