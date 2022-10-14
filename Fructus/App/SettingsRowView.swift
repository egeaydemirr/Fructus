//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Ege Aydemir on 14.10.2022.
//

import SwiftUI

struct SettingsRowView: View {
        //MARK: PROPERTIES
        var name: String
        var content : String
    
        //MARK: BODY
    var body: some View {
        HStack{
            Text(name).foregroundColor(.gray)
            Spacer()
            Text(content)
        }
    }
}
//MARK: PREVIEW
struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(name:"Developer", content:"John / Jane")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding(.vertical, 4)
    }
}
