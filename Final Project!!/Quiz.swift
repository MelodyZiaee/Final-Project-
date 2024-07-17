//
//  Quiz.swift
//  Final Project!!
//
//  Created by Vaneeka yaptangco on 7/16/24.
//

import SwiftUI

struct Quiz: View {
    @State private var placeholder = ""
    var body: some View {
        VStack{
            
            Text("Are you an extrovert or an introvert?")
                .fontWeight(.black)
                .padding(.top)
                .scenePadding()
                .foregroundColor(Color(hue: 0.927, saturation: 0.621, brightness: 1.0))
                .font(.title2)
                .multilineTextAlignment(.center)
       
            
            
            Button("Extrovert") {
                placeholder = "Extrovert👩‍🔬"
            }
            .padding(.horizontal)
            .bold()
            .font(.title2)
            .buttonStyle(.bordered)
            .foregroundColor(.white)
            .background(Color(hue: 0.005, saturation: 0.451, brightness: 1.0))
            .padding(.all)
            
            Button("Introvert") {
                placeholder = "Introvert👩‍🔬"
            }
            .padding(.horizontal)
            .bold()
            .font(.title2)
            .buttonStyle(.bordered)
            .foregroundColor(.white)
            .background(Color(hue: 0.658, saturation: 0.621, brightness: 0.505))
            
            
            
            
            Text(placeholder)
                .font(.system(size:50))
            
            
            
        }
        
    }
}
    
#Preview {
    Quiz()
    
}
