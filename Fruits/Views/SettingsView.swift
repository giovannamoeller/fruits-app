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
              
              Toggle(isOn: $isOnboarding) {
                Text("Restart".uppercased())
                  .bold()
                  .foregroundColor(.green)
              }
              .padding()
              .background(
                Color(UIColor.tertiarySystemBackground)
                  .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
              )
            }
            
          } label: {
            SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
          }
          
          GroupBox {
            Divider().padding(.vertical, 4)
            VStack(spacing: 20) {
              SettingsRowView(name: "Developer", content: "Giovanna Moeller")
              SettingsRowView(name: "Designer")
              SettingsRowView(name: "Compatibility", content: "iOS 14")
              SettingsRowView(name: "Instagram", linkLabel: "Girl Coding", linkDestination: "instagram.com/girl.coding")
              SettingsRowView(name: "SwiftUI", content: "4.0")
              SettingsRowView(name: "Version", content: "1.1.0")
            }
          } label: {
            SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
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

struct SettingsRowView: View {
  
  var name: String
  var content: String? = nil
  var linkLabel: String? = nil
  var linkDestination: String? = nil
  
  var body: some View {
    HStack {
      Text(name)
        .foregroundColor(.secondary)
      
      Spacer()
      
      if content != nil {
        Text(content!)
      } else if (linkLabel != nil && linkDestination != nil) {
        Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
        Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
      }
      else {
        EmptyView()
      }
    }
  }
}
