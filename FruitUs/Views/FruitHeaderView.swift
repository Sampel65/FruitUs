//
//  FruitHeaderView.swift
//  FruitUs
//
//  Created by Sampel on 03/01/2023.
//

import SwiftUI

struct FruitHeaderView: View {
    @State private var IsAnimatingImage : Bool = false
    var fruits : Fruit
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: fruits.gradientColors), startPoint: .trailing, endPoint: .bottomTrailing)
            Image(fruits.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity : 0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
                .scaleEffect(IsAnimatingImage ? 1.0 : 0.6)
                 
        }
        .frame(height : 440 )
        .onAppear{
            withAnimation(.easeOut(duration: 0.5)) {
                IsAnimatingImage = true
            }
        }
    }
}

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruits: fruitsData[0])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
