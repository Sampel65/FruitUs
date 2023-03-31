//
//  StartButtonView.swift
//  FruitUs
//
//  Created by Sampel on 02/01/2023.
//

import SwiftUI

struct StartButtonView: View {
    @AppStorage("IsOnboardng") var IsOnboarding : Bool?
    var body: some View {
        Button(action: {
           IsOnboarding = true
        }) {
            HStack {
                Text ("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25)
            )
        }
        .accentColor(Color.white)
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
