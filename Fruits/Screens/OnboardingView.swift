//
//  OnboardingView.swift
//  Fruits
//
//  Created by Giovanna Moeller on 23/04/23.
//

import SwiftUI

struct OnboardingView: View {
  
  private let showLimit: Int = 5
    
  var body: some View {
    TabView {
      ForEach(0..<showLimit, id: \.self) { index in
        FruitCardView(fruit: fruitsData[index])
      }
    }
    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
  }
}

struct OnboardingView_Previews: PreviewProvider {
  static var previews: some View {
    OnboardingView()
  }
}
