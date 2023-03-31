//
//  ContentView.swift
//  FruitUs
//
//  Created by Sampel on 02/01/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingSetting : Bool = false
    var fruits:[Fruit] = fruitsData
    var body: some View {
        NavigationView{
            List{
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruits: item)) {
                    FruitRowView(fruits: item)
                        .padding(.vertical, 4 )
                    }
                }
                .navigationTitle("Fruits")
                .navigationBarItems(trailing: Button( action: {
                    isShowingSetting = true
                }) {
                        Image(systemName: "slider.horizontal.3")
                        
                    }
                    .sheet(isPresented: $isShowingSetting) {
                        SettingView()
                    }
                )
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
