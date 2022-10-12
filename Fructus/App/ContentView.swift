//
//  ContentView.swift
//  Fructus
//
//  Created by Ege Aydemir on 11.10.2022.
//

import SwiftUI

struct ContentView: View {
    //MARK: Properties
    
    var fruits : [Fruit] = fruitsData
    
    //MARK: BODY
    var body: some View {
        NavigationView{
            List{
                ForEach(fruits.shuffled()){ item in
                    NavigationLink(destination: FruitDetailView(fruit: item)){
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }//:LIST
            .navigationTitle("Fruits")
        }//:Navigation
    }
}
//MARK: PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
