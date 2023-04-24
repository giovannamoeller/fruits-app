//
//  OnboardingView.swift
//  Fruits
//
//  Created by Giovanna Moeller on 23/04/23.
//

import SwiftUI

struct OnboardingView: View {
    
  var body: some View {
    TabView {
      ForEach(0..<5) { _ in
        FruitCardView(fruit: fruitsData[0])
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
