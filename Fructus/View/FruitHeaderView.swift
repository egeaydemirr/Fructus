//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Ege Aydemir on 13.10.2022.
//

import SwiftUI

struct FruitHeaderView: View {
    var fruit: Fruit
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red:0, green: 0, blue: 0, opacity: 0.8), radius: 8,x: 6,y: 8)
                .padding(.vertical, 20)
        }//: ZSTACK
        .frame(height: 440)
    }
}

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData[0])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
