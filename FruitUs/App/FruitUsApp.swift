//
//  FruitUsApp.swift
//  FruitUs
//
//  Created by Sampel on 02/01/2023.
//

import SwiftUI

@main
struct FruitUsApp: App {
    @AppStorage("IsOnboarding") var IsOnboarding : Bool = false
    var body: some Scene {
        WindowGroup {
            if IsOnboarding {
                OnBoardingView()
            } else {
                ContentView()
            }
        
        }
    }
}
