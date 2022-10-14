//
//  SettingsView.swift
//  Fructus
//
//  Created by Ege Aydemir on 14.10.2022.
//

import SwiftUI

struct SettingsView: View {
    //MARK: PROPERTIES
    
    //MARK: BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                }//: VStack
                .navigationBarTitle(Text("SETTINGS"), displayMode: .large)
                .padding()
            }//: SCROLL
        }//:Navigation
    }
}
//MARK: PREVIEW
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
