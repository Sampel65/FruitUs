//
//  FruitDetailView.swift
//  FruitUs
//
//  Created by Sampel on 03/01/2023.
//

import SwiftUI

struct FruitDetailView: View {
    var fruits  : Fruit 
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .center, spacing: 20){
                    VStack(alignment: .leading, spacing: 20) {
                        
                        FruitHeaderView(fruits: fruits)
                            
                        Text(fruits.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruits.gradientColors[1])
                        
                        
                        Text(fruits.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        FruitNutrientView(fruit: fruits)
                        
                        Text("Learn More about \(fruits.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruits.gradientColors[1])
                        
                        Text(fruits.description)
                            .multilineTextAlignment(.leading)
                            
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    }
                    .padding(.horizontal, 20)
                    .frame( maxWidth: 640, alignment: .center)
                    
                }
                .navigationBarTitle(fruits.title, displayMode: .inline)
                .navigationBarHidden(true)
                
            }
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruits: fruitsData[0])
    }
}
