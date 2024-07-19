//
//  ResourcesPage.swift
//  Final Project!!
//
//  Created by Vaneeka yaptangco on 7/16/24.
//

import SwiftUI

struct ResourcesPage: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                ZStack {
                    Image("pink")
                        .scaledToFill()
                        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                    Rectangle()
                        .fill(Color(red: 1.0, green: 0.5686274509803921, blue: 0.5647058823529412))
                        .frame(width: 900, height: 250)
                        .opacity(0.94)
                        .padding(.bottom,320)
                        .scenePadding()
                        .overlay(
                            VStack{

                                Rectangle()
                                    .fill(Color.white)
                                    .frame(width: 540, height: 60)
                                    .opacity(0.94)
                                    .padding(.bottom,300)
                                    .overlay(
                                        Text("Resources🔎")
                                            .fontWeight(.black)
                                            .foregroundColor(Color(hue: 0.649, saturation: 0.612, brightness: 0.57))
                                            .font(.title)
                                        // .padding(.top)
                                        
                                            .padding(.bottom,300)
                                    )
                                
                       
                            }
                            
                            //                Spacer()
                        )
                        .padding(.bottom, 800)
                    
                    ZStack {

                        
                        Text("GET  INVOLVED\n IN  STEM  ACTIVITIES!👩‍🔬")
                        
                            .fontWeight(.black)
                            .foregroundColor(Color(hue: 0.649, saturation: 0.0, brightness: 0.995))
                            .font(.title)
                            .multilineTextAlignment(.center)
                            .padding(.bottom, 740)
                            .padding(.trailing,8.0)
                        
                        Text("GET  INVOLVED\n IN  STEM  ACTIVITIES!👩‍🔬")
                        
                            .fontWeight(.black)
                            .foregroundColor(Color(hue: 0.649, saturation: 0.612, brightness: 0.57))
                            .font(.title)
                            .multilineTextAlignment(.center)
                            .padding(.bottom, 740)
                            .padding(.trailing,15.0)
                     
                        
                       
                    }
                    
                    HStack {
                        Text("[Kode With \n Klossy!](https://www.kodewithklossy.com/)")
                            .fontWeight(.black)
                            .foregroundColor(Color(hue: 0.649, saturation: 0.612, brightness: 0.57))
                            .font(.title)
                            .multilineTextAlignment(.center)
                            .padding(.bottom, 430)
                            .padding(.trailing,20.0)
                        
                        Rectangle()
                            .fill(Color.white)
                            .frame(width: 179, height: 173)
                            .opacity(0.94)
                            .cornerRadius(25)
                            .padding(.bottom,430)
                            .overlay(
                                
                                Image("kode")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width:150)
                                    .cornerRadius(15)
                                    .padding(.bottom, 430)
                            )
                        
                    }
                    
                    HStack {
                        Text("[Girls Who \n Code!](https://girlswhocode.com/)")
                            .fontWeight(.black)
                            .foregroundColor(Color(hue: 0.649, saturation: 0.612, brightness: 0.57))
                            .font(.title)
                            .multilineTextAlignment(.center)
                            .padding(.top, -20)
                            .padding(.trailing,20.0)
                       // Text("Aims to close the gender gap in technology by teaching coding skills to girls and young women.")
                        
                        Rectangle()
                            .fill(Color.white)
                            .frame(width: 179, height: 173)
                            .opacity(0.94)
                            .cornerRadius(25)
                            .padding(.top, -28)
                            .overlay(
                                
                                Image("gwc")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width:140)
                                    .cornerRadius(15)
                                    .padding(.top, -28)
                            )
                    }
                    
                    HStack {
                        Text("[National Center\n for Women \n & Information\n Technology!](https://ncwit.org/)")
                            .fontWeight(.black)
                            .foregroundColor(Color(hue: 0.649, saturation: 0.612, brightness: 0.57))
                            .font(.title2)
                            .multilineTextAlignment(.center)
                            .padding(.top, 370)
                            .padding(.trailing,8.0)
                        
                        Rectangle()
                            .fill(Color.white)
                            .frame(width: 179, height: 173)
                            .opacity(0.94)
                            .cornerRadius(25)
                            .padding(.top, 370)
                            .overlay(
                                
                                Image("ncw")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width:170)
                                    .cornerRadius(15)
                                    .padding(.top, 370)
                            )
                    }
                    
                    HStack {
                        Text("[National Girls \n Collaborative \nProject!](https://ngcproject.org/)")
                            .fontWeight(.black)
                            .foregroundColor(Color(hue: 0.649, saturation: 0.612, brightness: 0.57))
                            .font(.title2)
                            .multilineTextAlignment(.center)
                            .padding(.top, 740)
                            .padding(.trailing,22.0)
                        
                        Rectangle()
                            .fill(Color.white)
                            .frame(width: 179, height: 173)
                            .opacity(0.94)
                            .cornerRadius(25)
                            .padding(.top, 760)
                            .overlay(
                                
                                Image("ngcp")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width:140)
                                    .cornerRadius(15)
                                    .padding(.top, 760)
                            )
                    }
                    
                
                    Text("Dive into the world \nof STEM!🐬 ")
                        .fontWeight(.black)
                        .foregroundColor(Color(hue: 0.002, saturation: 0.0, brightness: 0.999))
                        .font(.title)
                        .multilineTextAlignment(.center)
                        .padding(.top, 1120)
                        .padding(.trailing,8.0)
                    
                    Text("Dive into the world \nof STEM!🐬")
                        .fontWeight(.black)
                        .foregroundColor(Color(red: 1.0, green: 0.5686274509803921, blue: 0.5647058823529412))
                        .font(.title)
                        .multilineTextAlignment(.center)
                        .padding(.top, 1120)
                        .padding(.trailing,15.0)
                    
                    
                }
                
          }
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


#Preview {
    ResourcesPage()
}
