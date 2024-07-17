//
//  ContentView.swift
//  Final Project!!
//
//  Created by Melody Ziaee on 7/12/24.
//

import SwiftUI

struct ContentView: View {
    @State private var UserName = ""
    @State private var NameTitle = "What is your name?"
    
    var body: some View {
      
        NavigationStack {
            
              
                VStack {
                    Text(NameTitle)
                        .font(.title)
                    TextField("", text: $UserName)
                        .multilineTextAlignment(.center)
                        .font(.title)
                        .border(Color.gray, width: 1)
                        .padding(15.0)
                    
                    Button("Submit Name") {
                        NameTitle = "Welcome \(UserName)!"
                    }
                    .font(.title2)
                    .tint(.purple)
                    
                    
                }
            NavigationLink(destination: Quiz()) {
                Text("Take Our Quiz!")
            }
            
            .padding(.top, 30.0)
            HStack {
                NavigationLink(destination: ResourcesPage()) {
                    Text("Resources")
                }
                
                NavigationLink(destination: FunFacts()) {
                    Text("Fun Facts")
                }
             
                
            }
          

        }}
}

#Preview {
    ContentView()
}
