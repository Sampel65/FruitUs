//
//  FruitCardView.swift
//  FruitUs
//
//  Created by Sampel on 02/01/2023.
//

import SwiftUI

struct FruitCardView: View {
    @AppStorage("IsOnboarding") var IsOnboarding : Bool = false
    
    var fruit : Fruit
    @State private var isAnimating : Bool = false
    
    var body: some View {
        ZStack {
            VStack(spacing : 20) {
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6 )
            
                Text(fruit.title)
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .shadow(color: Color(red: 0, green: 0, blue: 0,opacity : 0.15), radius: 2, x : 2, y : 2)
                
                Text("Blueberries are sweet , nutritious widely popular fruits all over the world.")
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame (maxWidth : 480)
                StartButtonView()
            }
            .onAppear {
                withAnimation(.easeOut(duration: 0.5)) {
                    isAnimating = true
                }
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitsData[1])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
