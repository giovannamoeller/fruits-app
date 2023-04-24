//
//  FruitDetailView.swift
//  Fruits
//
//  Created by Giovanna Moeller on 24/04/23.
//

import SwiftUI

struct FruitDetailView: View {
  
  var fruit: Fruit
  @State private var isAnimating: Bool = false
  
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
              .scaleEffect(isAnimating ? 1 : 0.6)
          }
          .frame(height: 440)
          .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
              isAnimating = true
            }
          }
          
          VStack (alignment: .leading, spacing: 20) {
            Text(fruit.title)
              .font(.largeTitle)
              .fontWeight(.heavy)
              .foregroundColor(fruit.gradientColors[1])
            
            Text(fruit.headline)
              .font(.headline)
              .multilineTextAlignment(.leading)
            
            FruitNutrientsView(fruit: fruit)
            
            Text("Learn more about \(fruit.title)".uppercased())
              .fontWeight(.bold)
              .foregroundColor(fruit.gradientColors[1])
            
            Text(fruit.description)
              .multilineTextAlignment(.leading)
            
            HStack {
              Text("Content source")
              
              Spacer()
              
              Link("Wikipedia", destination: URL(string: "https://wikipedia.com")!)
              
              Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
            .padding(.top, 10)
            .padding(.bottom, 40)
            
          }
          .padding(.horizontal, 20)
          .frame(maxWidth: 640, alignment: .center)
        }
        .navigationTitle(fruit.title)
        .navigationBarTitleDisplayMode(.inline)
        .toolbar(.hidden)
      }
      .edgesIgnoringSafeArea(.top)
    }
  }
}

struct FruitDetailView_Previews: PreviewProvider {
  static var previews: some View {
    FruitDetailView(fruit: fruitsData[0])
  }
}
