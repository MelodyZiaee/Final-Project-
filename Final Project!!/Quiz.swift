//
//  Quiz.swift
//  Final Project!!
//
//  Created by Vaneeka yaptangco on 7/16/24.
//

import SwiftUI

struct Quiz: View {
    @State private var placeholder = ""
    @State private var SpaceSea = ""
    @State private var Organization = ""
    var body: some View { ScrollView {
    
        VStack{
            
            //Question 1
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
            
            
            //Question 4
            VStack {
                Text("Do you prefer Space or the Sea?")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color.pink)
                Button("Space") {
                    SpaceSea = "🪐"
                }
                .buttonStyle(.borderedProminent)
                .tint(.pink)
                
                Button("Sea") {
                    SpaceSea = "🌊"
                }
                .frame(width: 100.0, height: 100.0)
                .buttonStyle(.borderedProminent)
                .tint(.blue)
              
               
            }
            Text(SpaceSea)
                .font(.system(size: 100))
            
            VStack {
                Text("When working on a project do you prefer heavy organization or adaptability?")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color.pink)
                    .multilineTextAlignment(.center)
                Button("Heavy planning and organization") {
                    Organization = "🌊"
                }
                .buttonStyle(.borderedProminent)
                .tint(.pink)
                
                Button("Adaptabilty") {
                    Organization = "🪐"
                }
                .frame(height: 100.0)
                .buttonStyle(.borderedProminent)
                .tint(.blue)
              
               
            }
            Text(Organization)
                .font(.system(size: 100))
            
        }
            
        }
        
    }
}
    
#Preview {
    Quiz()
    
}
