//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by Ege Aydemir on 13.10.2022.
//

import SwiftUI

struct FruitNutrientsView: View {
    //MARK: PROPERTIES
    var fruit: Fruit
    let nutrients: [String] = ["Energy","Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    //MARK: VIEW
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}
//MARK: PREVIEW
struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitsData[0])
            .previewLayout(.fixed(width: 375, height: 450))
            .padding()
    }
}
    
