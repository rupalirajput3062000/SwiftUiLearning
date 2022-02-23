//
//  InfoView.swift
//  FirstSwiftUiProject
//
//  Created by Rupali Rajput on 23/02/22.
//

import SwiftUI

struct InfoView: View {
    
    var imageName:String
    var text:String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25).fill(Color.white).padding(10)
            .frame( height: 60, alignment: .center)
            .overlay(HStack {
                
                Image(systemName: imageName).foregroundColor(Color.pink)
                Text(text)
            })
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(imageName: "phone.fill", text: "Hello").previewLayout(.sizeThatFits)
    }
}
