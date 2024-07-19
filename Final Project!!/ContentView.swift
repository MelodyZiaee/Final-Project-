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
    @State private var Introduction = ""
    var body: some View {
        
       
      
        NavigationStack{
            Text("STEM Sisters")
                .font(.title)
                 .ignoresSafeArea()
                 .fontWeight(.bold)
                 .multilineTextAlignment(.leading)
                 .frame(width: 400.0, height: 80.0)
                 .background(Color(red: 0.922, green: 0.522, blue: 0.412))
                 .foregroundColor(Color(red: 0.179, green: 0.189, blue: 0.281))
            ScrollView {
              
                ZStack {
                    Color(Color(red: 0.934, green: 0.811, blue: 0.827))
                        .ignoresSafeArea()
                        
                    VStack {
                        
                        Image("Dolphin Mascot")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 250.0, height: 250.0)
                        
                        
                        Text(NameTitle)
                            .font(.title3)
                            .fontWeight(.bold)
                        TextField("", text: $UserName)
                            .frame(width: 350.0)
                            .multilineTextAlignment(.center)
                            .font(.title)
                            .border(Color.gray, width: 1)
                           
                            .background(.white)
                        
                        Button("Submit Name") {
                            NameTitle = "Welcome \(UserName)!"
                          Introduction = "Hi \(UserName)! We know that it can be tough diving into new territories, especially with the lack of knowledge, exposure, and influence. STEM Sisters serves to help you take your first steps diving in. We help provide information, resources and even introduce you to many women in STEM. We hope to inspire and encourge you to pursure your journey into tech!"
                          
                              
                        }
                        
                        .frame(width: 140.0, height: 50.0)
                        .font(.title2)
                        .background(Color(red: 0.999, green: 0.571, blue: 0.565))
                        .foregroundColor(.white)
                        
                        Text(Introduction)
                            .multilineTextAlignment(.leading)
                            .lineLimit(nil)
                            .padding(25.0)
                            .frame(height: nil)
                            
                       
                        
                          NavigationLink(destination: Quiz()) {
                              Text("Take this quiz to find your STEM sister!")
                                  .fontWeight(.bold)
                                 
                                  .foregroundColor(.white)
                                
                                  .frame(width: 180.0, height: 50.0)
                                  .cornerRadius(15)
                                  .background(.spaceCadet)
                          }
                       
                        
                          .padding(10)
                                  HStack {
                                      
                                      NavigationLink(destination: ResourcesPage()) {
                                          Text("Resources")
                                              .fontWeight(.semibold)
                                      }
                                      .padding(10.0)
                                      
                                      .foregroundColor((Color(red: 0.999, green: 0.571, blue: 0.565)))
                                      
                                      NavigationLink(destination: FunFacts()) {
                                          Text("STEM Careers")
                                              .fontWeight(.semibold)
                                              
                                  }
                                      .padding(10.0)
                                      .foregroundColor((Color(red: 0.999, green: 0.571, blue: 0.565)))
                                 
                                  }
                                  .frame(height: nil)
                            
                          
                    }
                    .frame(height: 800.0)
                 
                            
                            
                }
                .frame(height: nil)
            }
        }
        
        
        
    }
}

#Preview {
    ContentView()
}
