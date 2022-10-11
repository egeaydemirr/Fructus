//
//  OnboardingView.swift
//  Fructus
//
//  Created by Ege Aydemir on 11.10.2022.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: PROPERTIES
    var fruits : [Fruit] = fruitsData
    
    // MARK: BODY

    var body: some View {
        TabView{
            ForEach(0..<5) { item in
                ForEach(fruits[0...12]){ item in
                    FruitCardView(fruit: item)
                }
            }//: LOOP
        }//: TabView
        .tabViewStyle(PageTabViewStyle())
        .ignoresSafeArea()
        
    }
}

// MARK: PREVIEW

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData   )
    }
}
