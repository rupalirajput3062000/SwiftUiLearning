//
//  ContentView.swift
//  FirstSwiftUiProject
//
//  Created by Rupali Rajput on 23/02/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red: 1.00, green: 0.75, blue: 0.85, opacity: 1).ignoresSafeArea()
            VStack {
                Image("rupaliImage").resizable().aspectRatio(contentMode: .fill)
                    .frame(width: 300, height: 300, alignment: .center)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.pink, lineWidth: 5))
                    
                Text("Rupali Rajput")
                    .font(.largeTitle)
                    .foregroundColor(Color.pink)
                    .padding()
                    
                Text("Software Engineer")
                    .foregroundColor(Color.pink)
                    .font(.title)
                Divider()
                
                InfoView(imageName: "phone.fill", text: "123-456-789")
                InfoView(imageName: "envelope.fill", text: "rurajput@gmail.com")
                Spacer()
                
                HStack {
                    Image(systemName: "heart.fill").foregroundColor(Color.red).font(.largeTitle)
                    Spacer()
                    Image(systemName: "heart.fill").foregroundColor(Color.blue).font(.largeTitle)
                    Spacer()
                    Image(systemName: "heart.fill").foregroundColor(Color.green).font(.largeTitle)
                }
                
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


