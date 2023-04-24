//
//  SettingsView.swift
//  Fruits
//
//  Created by Giovanna Moeller on 24/04/23.
//

import SwiftUI

struct SettingsView: View {
  var body: some View {
    NavigationView {
      ScrollView(.vertical, showsIndicators: false) {
        VStack {
          Text("Hello, World!")
        }
        .navigationTitle("Settings")
        .navigationBarTitleDisplayMode(.large)
        .padding()
      }
    }
  }
}

struct SettingsView_Previews: PreviewProvider {
  static var previews: some View {
    SettingsView()
  }
}
