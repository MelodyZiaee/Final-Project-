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
                        .foregroundColor(Color(red: 1.0, green: 0.0, blue: 0.0, opacity: 1.0))
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
            
        }}
}

#Preview {
    ContentView()
}
