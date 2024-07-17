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
    @State private var showNew = false
    @State private var showInnovate = false
    @State private var grace = 0
    @State private var katherine = 0
    @State private var check = false
    var body: some View { ScrollView {
    
        ScrollView {
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
                    grace += 1
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
                    katherine += 1
                }
                .padding(.horizontal)
                .bold()
                .font(.title2)
                .buttonStyle(.bordered)
                .foregroundColor(.white)
                .background(Color(hue: 0.658, saturation: 0.621, brightness: 0.505))
                
                
                
                
                Text(placeholder)
                    .font(.system(size:50))
                
                    .padding (40)
                //Question 4
                VStack {
                    Text("Do you prefer Space or the Sea?")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color.pink)
                    Button("Space") {
                        SpaceSea = "🪐"
                        grace += 1
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.pink)
                    
                    Button("Sea") {
                        SpaceSea = "🌊"
                        katherine += 1
                    }
                    .frame(width: 100.0, height: 100.0)
                    .buttonStyle(.borderedProminent)
                    .tint(.blue)
                  
                   
                }
                Text(SpaceSea)
                    .font(.system(size: 100))
                .padding (40)
                
                VStack {
                    Text("When working on a project do you prefer heavy organization or adaptability?")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color.pink)
                        .multilineTextAlignment(.center)
                    Button("Heavy planning and organization") {
                        Organization = "🌊"
                        grace += 1
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.pink)
                    
                    Button("Adaptabilty") {
                        Organization = "🪐"
                        katherine += 1
                    }
                    .frame(height: 100.0)
                    .buttonStyle(.borderedProminent)
                    .tint(.blue)
                  
                   
                }
                Text(Organization)
                    .font(.system(size: 100))
                .padding (40)
                
                VStack {
                    Text("Would you rather create something or improving upon something existing?")
                        .fontWeight(.black)
                        .padding(.top)
                        .scenePadding()
                        .foregroundColor(Color(hue: 0.927, saturation: 0.621, brightness: 1.0))
                        .font(.title2)
                        .multilineTextAlignment(.center)
                    
                    Button ( action: { showNew.toggle()
                        showInnovate = false
                        if !check{
                            grace += 1
                            check = true
                        }
                    }) {
                        Text("Create something new!")
                            .padding(.horizontal)
                            .bold()
                            .font(.title2)
                            .buttonStyle(.bordered)
                            .foregroundColor(.white)
                            .background(Color(hue: 0.005, saturation: 0.451, brightness: 1.0))
                            .padding(.all)
                    }
                    
                    Button (action: { showInnovate.toggle()
                        showNew = false
                        if !check {
                            katherine += 1
                            check = true
                        }
                    }) {
                        Text("Improve something existing!")
                            .padding(.horizontal)
                            .bold()
                            .font(.title2)
                            .buttonStyle(.bordered)
                            .foregroundColor(.white)
                            .background(Color(hue: 0.658, saturation: 0.621, brightness: 0.505))
                    }
                    
                    if showNew {
                        Text("Create!")
                            .font(.title)
                            .padding(.top)
                        
                    }
                    else if showInnovate {
                        Text("Improve!")
                            .font(.title)
                            .padding(.top)
                        
                    }
                    else{
                        Text("Choose your answer!")
                            .foregroundColor(Color.blue)
                            .padding(10)
                            
                    }
                    Text("Grace = \(grace)   Katherine = \(katherine)")
                
                        .padding (40)
                }
            }
        }
        
            
        }
        
    }
}
    
#Preview {
    Quiz()
    
}
