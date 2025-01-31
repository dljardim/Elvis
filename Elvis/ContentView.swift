//
//  ContentView.swift
//  Elvis
//
//  Created by Damian Jardim on 1/31/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var message = ""
    @State private var imageName = ""
    
    var body: some View {
        
        VStack {
            Text("What's So Funny 'Bout")
                .foregroundStyle(.purple)
                .font(.largeTitle)
                .fontWeight(.black)
            
            Spacer()
            
            Image(systemName:imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)

            
            Text(message)
                .foregroundStyle(.purple)
                .font(.largeTitle)
                .fontWeight(.black)
            
            Spacer()
            
            HStack{
                Button("Peace"){
                    message="Peace"
                    imageName = "peacesign"
                }
                
                Button("Love"){
                    message="Love"
                    imageName = "heart"
                }
                
                Button("Understanding"){
                    message="Understanding"
                    imageName = "lightbulb"
                }
            }
            .tint(.purple)
            .buttonStyle(.borderedProminent)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
