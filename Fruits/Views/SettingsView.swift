//
//  SettingsView.swift
//  Fruits
//
//  Created by Giovanna Moeller on 24/04/23.
//

import SwiftUI

struct SettingsView: View {
  
  @Environment(\.presentationMode) var presentationMode
  @AppStorage("isOnboarding") var isOnboarding: Bool = false
  @State private var showOnboarding: Bool = false
  
  var body: some View {
    NavigationView {
      ScrollView(.vertical, showsIndicators: false) {
        VStack(spacing: 20) {
          GroupBox {
            Divider().padding(.vertical, 4)
            
            HStack(alignment: .center, spacing: 10) {
              Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .cornerRadius(8)
              
              Text("Most fruits are naturally low in fat, sodium and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins and much more.")
                .font(.footnote)
            }
          } label: {
            SettingsLabelView(labelText: "Fruits App", labelImage: "info.circle")
          }
          
          GroupBox {
            Divider().padding(.vertical, 4)
            
            VStack(spacing: 20) {
              
              Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                .font(.footnote)
              
              Toggle("Restarted".uppercased(), isOn: $isOnboarding)
                .bold()
                .foregroundColor(.green)
             
            }
          } label: {
            SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
          }

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

struct SettingsLabelView: View {
  
  var labelText: String
  var labelImage: String
  
  var body: some View {
    HStack {
      Text(labelText.uppercased())
      
      Spacer()
      
      Image(systemName: labelImage)
    }
    .fontWeight(.bold)
  }
}
