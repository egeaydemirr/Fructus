//
//  OnboardingView.swift
//  Fructus
//
//  Created by Ege Aydemir on 11.10.2022.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: PROPERTIES
    
    // MARK: BODY

    var body: some View {
        TabView{
            ForEach(0..<5){ item in
                FruitCardView()
            }//: LOOP
        }//: TabView
        .tabViewStyle(PageTabViewStyle())
        .ignoresSafeArea()
        
    }
}

// MARK: PREVIEW

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
