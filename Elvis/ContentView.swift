//
//  ContentView.swift
//  Elvis
//
//  Created by John Howard on 2/24/25.
//

import SwiftUI

struct ContentView: View {
    @State private var imageView = ""
    @State private var message = ""

    var body: some View {
        VStack {
            Text("What's So Funny 'Bout")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.purple)
            Spacer()
            
            Image(systemName: imageView)
                .resizable().scaledToFit()
                .frame(width: 300, height: 300)
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.purple)
            
            Spacer()
            
            HStack {
                Button("Peace") {
                    imageView = "peacesign"
                    message = "Peace"
                }
                Button("Love") {
                    imageView = "heart"
                    message = "Love"
                }
                Button("Enlightenment") {
                    imageView = "lightbulb"
                    message = "Enlightenment"
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
