//
//  SettingsView.swift
//  Fruits
//
//  Created by Giovanna Moeller on 24/04/23.
//

import SwiftUI

struct SettingsView: View {
  
  @Environment(\.presentationMode) var presentationMode
  
  var body: some View {
    NavigationView {
      ScrollView(.vertical, showsIndicators: false) {
        VStack {
          Text("Hello, World!")
        }
        .navigationTitle("Settings")
        .navigationBarTitleDisplayMode(.large)
        .toolbar {
          ToolbarItemGroup(placement: .navigationBarTrailing) {
            Button {
              presentationMode.wrappedValue.dismiss()
            } label: {
              Image(systemName: "xmark")
            }
          }
        }
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
