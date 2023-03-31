//
//  FruitNutrientView.swift
//  FruitUs
//
//  Created by Sampel on 03/01/2023.
//

import SwiftUI

struct FruitNutrientView: View {
    
    var fruit : Fruit
    let nutrient : [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins"]
    
    var body: some View {
        GroupBox(){
            DisclosureGroup("Nutritional value per kg") {
                ForEach(0..<nutrient.count, id : \.self) { item in
                    Divider().padding(.vertical, 2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrient[item])
                        }
                        .foregroundColor(fruit.gradientColors [1])
                        .font(.system(.body).bold())
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }
    }
}

struct FruitNutrientView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientView(fruit: fruitsData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
    }
}
