//
//  FruitsApp.swift
//  Fruits
//
//  Created by Giovanna Moeller on 23/04/23.
//

import SwiftUI

@main
struct FruitsApp: App {
  
  @AppStorage("isOnboarding") var isOnboarding: Bool = true
  
  var body: some Scene {
    WindowGroup {
      if isOnboarding {
        OnboardingView()
      } else {
        ContentView()
      }
    }
  }
}
