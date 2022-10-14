//
//  ContentView.swift
//  Fructus
//
//  Created by Ege Aydemir on 11.10.2022.
//

import SwiftUI

struct ContentView: View {
    //MARK: Properties
    
    @State private var isShowingSettings : Bool = false
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
            .navigationBarItems(
                trailing:
                    Button(action: {
                        isShowingSettings = true
                    }) {
                        Image(systemName: "slider.horizontal.3")
                    } //:Button
                    .sheet(isPresented: $isShowingSettings) {
                        SettingsView()
                    }
            )
        }//:Navigation
        .navigationViewStyle(StackNavigationViewStyle())
    }
}
//MARK: PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
