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
    @State private var showGrace = ""
    @State private var showKat = ""
    @State private var graceBio = ""
    @State private var katBio = ""
    
    var body: some View {
        ScrollView {
            ZStack{
                Color("lightpink")
                    .ignoresSafeArea()
                VStack{
                    
                    //Question 1
                    Text("Are you an extrovert or an introvert?")
                        .fontWeight(.black)
                        .padding(.top)
                        .scenePadding()
                        .foregroundColor(Color("bluey"))
                        .font(.title2)
                        .multilineTextAlignment(.center)
                    
                    
                    
                    Button("Extrovert") {
                        placeholder = "👩‍🔬"
                    }
                    .padding(.horizontal)
                    .bold()
                    .foregroundColor(.white)
                    .background(Color("coral"))
                    .font(.system(size: 30))
                    .padding(.all)
                    
                    Button("Introvert") {
                        placeholder = "💪"
                    }
                    .padding(.horizontal)
                    .bold()
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                    .background(Color("pinky"))
                    
                    
                    
                    
                    Text(placeholder)
                        .font(.system(size:50))
                    
                        .padding (40)
                    //Question 4
                    VStack {
                        Text("Do you prefer Space or the Sea?")
                            .fontWeight(.black)
                            .padding(.top)
                            .scenePadding()
                            .foregroundColor(Color("bluey"))
                            .font(.title2)
                            .multilineTextAlignment(.center)
                        
                        Button("Space") {
                            SpaceSea = "🪐"
                            
                        }
                        .padding(.horizontal)
                        .bold()
                        .foregroundColor(.white)
                        .background(Color("coral"))
                        .font(.system(size: 30))
                        .padding(.all)
                        
                        Button("Sea") {
                            SpaceSea = "🌊"
                            
                        }
                        .padding(.horizontal)
                        .bold()
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                        .background(Color("pinky"))
                        
                        
                    }
                    Text(SpaceSea)
                        .font(.system(size: 100))
                        .padding (40)
                    
                    VStack {
                        Text("When working on a project do you prefer heavy organization or adaptability?")
                            .fontWeight(.black)
                            .padding(.top, 40)
                            .scenePadding()
                            .foregroundColor(Color("bluey"))
                            .font(.title2)
                            .multilineTextAlignment(.center)
                        Button("Organization") {
                            Organization = "🧠"
                            
                        }
                        .padding(.horizontal)
                        .bold()
                        .foregroundColor(.white)
                        .background(Color("coral"))
                        .font(.system(size: 30))
                        .padding(.all)
                        
                        Button("Adaptabilty") {
                            Organization = "🌀"
                            
                        }
                        .padding(.horizontal)
                        .bold()
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                        .background(Color("pinky"))
                        
                        
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
                            .foregroundColor(Color("bluey"))
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
                                .background(Color("coral"))
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
                                .background(Color("pinky"))
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
                            .foregroundColor(Color("bluey"))
                            .font(.title2)
                            .multilineTextAlignment(.center)
                        
                        Button ( action: { showGroup.toggle()
                            showInd = false
                            
                        }) {
                            Text("Team!")
                                .padding(.horizontal)
                                .bold()
                                .foregroundColor(.white)
                                .background(Color("coral"))
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
                                .background(Color("pinky"))
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
                            //question 1
                            if placeholder == "👩‍🔬" {
                                grace += 1
                            } else if placeholder == "💪" {
                                katherine += 1
                            }
                            //question 2
                            if SpaceSea == "🪐" {
                                grace += 1
                            }else if SpaceSea == "🌊" {
                                katherine += 1
                            }
                            //question 2
                            if Organization == "🧠" {
                                grace += 1
                            }else if Organization == "🌀" {
                                katherine += 1
                            }
                            //question 3
                            if showNew {
                                grace += 1
                            } else if showInnovate {
                                katherine += 1
                            }
                            //question 3
                            if showGroup {
                                grace += 1
                            } else if showInd{
                                katherine += 1
                            }
                            //choosing person
                            if grace + katherine == 5 {
                                if grace > 2 {
                                    showGrace = "Grace Hopper!"
                                    graceBio = "She was an American computer scientist and United States Navy rear admiral."
                                }
                                if katherine > 2 {
                                    showKat = "Katherine Johnson!"
                                    katBio = "Katherine Johnson was an American mathematician whose calculations of orbital mechanics were critical to the success of the first and subsequent U.S. crewed spaceflights."
                                }
                            }
                            
                        }){
                            Text("Your Stem Woman is...")
                                .fontWeight(.black)
                                .padding(.all, 80)
                                .scenePadding()
                                .foregroundColor(Color("bluey"))
                                .font(.headline)
                                .multilineTextAlignment(.center)
                            
                        }
                    
                        Text("\(showGrace)\n \n \(graceBio)")
                                .fontWeight(.black)
                                .padding(.top, 20)
                                .padding(.trailing, 20)
                                .padding(.leading, 20)
                                .font(.system(size: 30))
                                .foregroundColor(Color("coral"))
                                .multilineTextAlignment(.center)
                        
                        Text("\(showKat)\n \n \(katBio)")
                            .fontWeight(.black)
                            .padding(.bottom, 80)
                        
                            .foregroundColor(Color("coral"))
                            .font(.system(size: 30))
                            .multilineTextAlignment(.center)
                            
                        HStack{
                            NavigationLink (destination: FunFacts()){
                                Text("STEM Careers")
                                    .font(.title3)
                                    .foregroundColor(Color("coral"))
                                    .multilineTextAlignment(.center)
                            }
                            NavigationLink (destination: ResourcesPage()){
                                Text("Resources")
                                    .font(.title3)
                                    .foregroundColor(Color("coral"))
                                    .multilineTextAlignment(.center)
                            }
                            NavigationLink (destination: ContentView()){
                                Text("Home")
                                    .font(.title3)
                                    .foregroundColor(Color("coral"))
                                    .multilineTextAlignment(.center)
                            }
                        }
                    }
                }
               
            }
        }
        .navigationTitle("Quiz")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarHidden(true)
        }
        
    }
    
#Preview {
    Quiz()
    
}
