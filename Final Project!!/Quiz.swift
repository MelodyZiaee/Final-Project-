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
    @State private var showGroup = false
    @State private var showInd = false
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
                }
                .padding(.horizontal)
                .bold()
                .foregroundColor(.white)
                .background(Color(hue: 0.005, saturation: 0.451, brightness: 1.0))
                .font(.system(size: 30))
                .padding(.all)
                
                Button("Introvert") {
                    placeholder = "Introvert👩‍🔬"
                }
                .padding(.horizontal)
                .bold()
                .font(.system(size: 30))
                .foregroundColor(.white)
                .background(Color(hue: 0.658, saturation: 0.621, brightness: 0.505))
                
                
                
                
                Text(placeholder)
                    .font(.system(size:50))
                
                    .padding (40)
                //Question 4
                VStack {
                    Text("Do you prefer Space or the Sea?")
                        .fontWeight(.black)
                        .padding(.top)
                        .scenePadding()
                        .foregroundColor(Color(hue: 0.927, saturation: 0.621, brightness: 1.0))
                        .font(.title2)
                        .multilineTextAlignment(.center)
                    Button("Space") {
                        SpaceSea = "🪐"
                       
                    }
                    .padding(.horizontal)
                    .bold()
                    .foregroundColor(.white)
                    .background(Color(hue: 0.005, saturation: 0.451, brightness: 1.0))
                    .font(.system(size: 30))
                    .padding(.all)
                    
                    Button("Sea") {
                        SpaceSea = "🌊"
                        
                    }
                    .padding(.horizontal)
                    .bold()
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                    .background(Color(hue: 0.658, saturation: 0.621, brightness: 0.505))
                  
                   
                }
                Text(SpaceSea)
                    .font(.system(size: 100))
                .padding (40)
                
                VStack {
                    Text("When working on a project do you prefer heavy organization or adaptability?")
                        .fontWeight(.black)
                        .padding(.top, 40)
                        .scenePadding()
                        .foregroundColor(Color(hue: 0.927, saturation: 0.621, brightness: 1.0))
                        .font(.title2)
                        .multilineTextAlignment(.center)
                    Button("Organization") {
                        Organization = "🌊"
                        
                    }
                    .padding(.horizontal)
                    .bold()
                    .foregroundColor(.white)
                    .background(Color(hue: 0.005, saturation: 0.451, brightness: 1.0))
                    .font(.system(size: 30))
                    .padding(.all)
                    
                    Button("Adaptabilty") {
                        Organization = "🪐"
                        
                    }
                    .padding(.horizontal)
                    .bold()
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                    .background(Color(hue: 0.658, saturation: 0.621, brightness: 0.505))
                  
                   
                }
                Text(Organization)
                    .font(.system(size: 100))
                .padding (40)
        //Question 4
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
                    
                    }) {
                        Text("Create!")
                            .padding(.horizontal)
                            .bold()
                            .buttonStyle(.bordered)
                            .foregroundColor(.white)
                            .background(Color(hue: 0.005, saturation: 0.451, brightness: 1.0))
                            .font(.system(size: 30))
                            .padding(.all)
                    }
                    
                    Button (action: { showInnovate.toggle()
                        showNew = false
                        
                    }) {
                        Text("Improve!")
                            .padding(.horizontal)
                            .bold()
                            .font(.system(size: 30))
                            .foregroundColor(.white)
                            .background(Color(hue: 0.658, saturation: 0.621, brightness: 0.505))
                    }
                    
                    if showNew {
                        Text("🪄")
                            .font(.system(size: 100))
                            .padding(.top)
                    }
                    else if showInnovate {
                        Text("🛠️")
                            .font(.system(size: 100))
                            .padding(.top)
                    }
                   
                    
                    Text("Do you prefer working on things in groups or as the pioneer?")
                        .fontWeight(.black)
                        .padding(.top, 100)
                        .scenePadding()
                        .foregroundColor(Color(hue: 0.927, saturation: 0.621, brightness: 1.0))
                        .font(.title2)
                        .multilineTextAlignment(.center)
                    
                    Button ( action: { showGroup.toggle()
                        showInd = false
                    
                    }) {
                        Text("Team!")
                            .padding(.horizontal)
                            .bold()
                            .foregroundColor(.white)
                            .background(Color(hue: 0.005, saturation: 0.451, brightness: 1.0))
                            .font(.system(size: 30))
                            .padding(.all)
                    }
                    
                    Button (action: { showInd.toggle()
                        showGroup = false
                        
                    }) {
                        Text("Pioneer!")
                            .padding(.horizontal)
                            .bold()
                            .font(.system(size: 30))
                            .foregroundColor(.white)
                            .background(Color(hue: 0.658, saturation: 0.621, brightness: 0.505))
                    }
                    
                    if showGroup {
                        Text(" 👭")
                            .font(.system(size: 100))
                            .padding(.top)
                        
                    }
                    else if showInd {
                        Text("👑")
                            .font(.system(size: 100))
                            .padding(.top)
                    }
                    
                    
            //final button to compile results
                    Button(action: {
                        grace = 0
                        katherine = 0
                        if placeholder == "Extrovert👩‍🔬" {
                            grace += 1
                        } else if placeholder == "Introvert👩‍🔬" {
                            katherine += 1
                        }
                        if SpaceSea == "🪐" {
                            grace += 1
                        }else if SpaceSea == "🌊" {
                            katherine += 1
                        }
                        if Organization == "🪐" {
                            grace += 1
                        }else if Organization == "🌊" {
                            katherine += 1
                        }
                        if showNew {
                            grace += 1
                        } else if showInnovate {
                            katherine += 1
                        }
                        if showGroup {
                            grace += 1
                        } else if showInd{
                            katherine += 1
                        }
                        if grace > 2 {
                            //Text("NavLink grace")
                        }else if katherine > 2 {
                           // Text("NavLink katherine")
                        }
                        
                    }){
                        
                        Text("Click for your Stem Woman!")
                            .fontWeight(.black)
                            .padding(.top)
                            .scenePadding()
                            .foregroundColor(Color(hue: 0.927, saturation: 0.621, brightness: 1.0))
                            .font(.system(size: 50))
                            .multilineTextAlignment(.center)
                            
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
