//
//  ContentView.swift
//  Final Project!!
//
//  Created by Melody Ziaee on 7/12/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("What is your favorite color??")
            TextField("", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width: 1)
                .padding(15.0)
            
            Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }
            .font(.title2)
           
        }
    }
}

#Preview {
    ContentView()
}
