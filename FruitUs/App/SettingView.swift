//
//  SettingView.swift
//  FruitUs
//
//  Created by Sampel on 03/01/2023.
//

import SwiftUI

struct SettingView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack{
                    
                GroupBox(
                    label :
                            SettingsLabelView(labelText: "FruitUs", labelImage: "info.circle")
                    )
                    {
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            
                            Image("logo")
                                .resizable()
                                .scaleEffect()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fat , sodium, and calories, None have cholesterols . Fruits are sources of many ssential nutrients, including pottasium, diestarry fiber, vitamins and much more .")
                                .font(.footnote)
                        }
                        
                    
                }
                    
                    GroupBox(
                        label : SettingsLabelView(labelText: "Applications", labelImage: "apps.iphone") )
                    {
                        SetingsRowView(name: "Developer", Content: "John / jane")
                        SetingsRowView(name: "Designer ", Content: "Robert Pestras")
                        SetingsRowView(name: "Compartibility", Content: "Ios 14")
                        SetingsRowView(name: "Website", linkLabel: "SwiftUi Master class", linkDestination: "swiftuimasterclass.com")
                        SetingsRowView(name: "Twitter", linkLabel: "@RobertPetras", linkDestination: "twitter.com/robertpetras")
                        SetingsRowView(name: "SwftUi", Content: "2.0")
                        SetingsRowView(name: "version", Content: "1.1.0")
                        }
                }
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(trailing: Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "xmark")
                }
                .padding()
                
            )}
                        
            
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
            .preferredColorScheme(.dark)
    }
}
