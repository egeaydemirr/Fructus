//
//  FruitCardView.swift
//  Fructus
//
//  Created by Ege Aydemir on 11.10.2022.
//

import SwiftUI

struct FruitCardView: View {
    // MARK: Properties
    
    // MARK: Body
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                // FRUIT: IMAGE
                Image("blueberry")
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.90), radius: 8, x: 6, y: 8)
                // FRUIT: TITLE
                Text("Blueberry")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.9), radius: 2, x: 2, y: 2)
                // FRUIT: HEADLINE
                // BUTTON: START
            }//: VStack
        } //: ZStack
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(.linearGradient(colors: [Color("ColorBlueberryLight"), Color("ColorBlueberryDark")], startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
    }
}
// MARK: Preview

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView()
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
